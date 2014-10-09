class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.references :author, index: true
      t.string :name
      t.references :publisher, index: true
      t.references :universe, index: true
      t.string :title
      t.string :binding
      t.integer :pages
      t.string :language

      t.timestamps
    end
  end
end
