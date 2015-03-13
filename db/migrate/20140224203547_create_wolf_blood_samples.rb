class CreateWolfBloodSamples < ActiveRecord::Migration
  def change
    create_table :wolf_blood_samples do |t|
      t.integer :wolf_id
      t.datetime :taken_at

      t.timestamps null: false
    end
    add_index :wolf_blood_samples, :wolf_id
  end
end
