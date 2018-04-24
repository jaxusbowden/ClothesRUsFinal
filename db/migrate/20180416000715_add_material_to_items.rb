class AddMaterialToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :material, :string
  end
end
