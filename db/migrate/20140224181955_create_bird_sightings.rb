class CreateBirdSightings < ActiveRecord::Migration
  def change
    create_table :bird_sightings do |t|
      t.datetime :sighted_at
      t.integer :bird_id

      t.timestamps null: false
    end
    add_index :bird_sightings, :bird_id
  end
end
