class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :category
      t.string :material
      t.string :designer

      t.timestamps
    end
  end
end
