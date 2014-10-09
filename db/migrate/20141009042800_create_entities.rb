class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :type
      t.integer :type_id
      t.references :universe, index: true
      t.string :name

      t.timestamps
    end
  end
end
