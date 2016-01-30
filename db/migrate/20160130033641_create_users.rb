class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :xpos
      t.integer :ypos

      t.timestamps null: false
    end
  end
end
