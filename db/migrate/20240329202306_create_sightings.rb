class CreateSightings < ActiveRecord::Migration[7.1]
  def change
    create_table :sightings do |t|
      t.float :latitude
      t.float :longitude
      t.date :date

      t.timestamps
    end
  end
end
