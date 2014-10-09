class CreateEntitiesLocations < ActiveRecord::Migration
  def change
    create_table :entities_locations do |t|
      t.belongs_to :entity, index: true
      t.belongs_to :location, index: true
    end
  end
end
