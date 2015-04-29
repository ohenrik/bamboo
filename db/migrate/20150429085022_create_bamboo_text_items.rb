class CreateBambooTextItems < ActiveRecord::Migration
  def change
    create_table :bamboo_text_items do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
