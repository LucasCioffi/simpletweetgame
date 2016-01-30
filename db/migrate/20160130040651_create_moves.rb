class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :username
      t.string :friend_username
      t.string :board_id, :default => 0
      t.string :direction

      t.timestamps null: false
    end
  end
end
