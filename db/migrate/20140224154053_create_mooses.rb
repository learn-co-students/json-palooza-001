class CreateMooses < ActiveRecord::Migration
  def change
    create_table :mooses do |t|
      t.string :name
      t.string :variety
      t.string :coloration

      t.timestamps
    end
  end
end
