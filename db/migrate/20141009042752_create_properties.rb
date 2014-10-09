class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :type
      t.integer :type_id
      t.string :key_name
      t.text :value

      t.timestamps
    end
  end
end
