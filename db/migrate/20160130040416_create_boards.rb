class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :username
      t.string :title

      t.timestamps null: false
    end
  end
end
