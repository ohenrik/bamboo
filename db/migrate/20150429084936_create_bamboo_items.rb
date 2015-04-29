class CreateBambooItems < ActiveRecord::Migration
  def change
    create_table :bamboo_items do |t|
      t.references :structure, index: true, foreign_key: true
      t.references :itemizable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
