class CreateFoxes < ActiveRecord::Migration
  def change
    create_table :foxes do |t|
      t.string :name
      t.string :variety
      t.string :coloration
      t.string :saying

      t.timestamps null: false
    end
  end
end
