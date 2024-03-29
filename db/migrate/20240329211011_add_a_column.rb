class AddAColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :sightings, :animal_id, :int
  end
end
