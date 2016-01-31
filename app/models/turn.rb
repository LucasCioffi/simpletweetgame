class Turn < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  belongs_to :local_participation_record

  def parse_command!
    cmd_name, cmd_args = message.split(/\s/, 1)

    case cmd_name
      when 'go' then move_user(user, local_participation_record, cmd_args)
      else invalid_command(cmd_args)
    end

    raise self.inspect
    save!
  end

  private

  def move_user(user, participation_record, *args)
    @command = 'go'
    puts args
    newx, newy = [participation_record.xpos, participation_record.ypos]
    cmd_args = args.split(/\s/)
    if cmd_args.length > 0

      case cmd_args.first.downcase
        when 'up' then
          @command += ' left'
          newy = newy - 1
        when 'right' then
          @command += ' right'
          newx = newx + 1
        when 'down' then
          @command += ' down'
          newy = newy + 1
        when 'left' then
          @command += ' left'
          newx = newx - 1
      end
    end

    # reset if out of bounds
    newx = participation_record.xpos if newx < 0 or newx >= self.board.width
    newy = participation_record.ypos if newy < 0 or newy >= self.board.height
    self.xpos = newx
    self.ypos = newy
    participation_record.update!(xpos: newx, ypos:newy, num_moves: num_moves + 1)
  end

  def invalid_command(*args)
    @command = 'invalid'
  end
end
