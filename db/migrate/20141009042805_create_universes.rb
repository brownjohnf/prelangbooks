class CreateUniverses < ActiveRecord::Migration
  def change
    create_table :universes do |t|
      t.references :author, index: true
      t.string :name
      t.text :string

      t.timestamps
    end
  end
end
