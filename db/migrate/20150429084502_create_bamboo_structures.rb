class CreateBambooStructures < ActiveRecord::Migration
  def change
    create_table :bamboo_structures do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.references :constructable, polymorphic: true, index: true, index: { name: 'index_bamboo_structures_on_constructable' }

      t.timestamps null: false
    end
  end
end
