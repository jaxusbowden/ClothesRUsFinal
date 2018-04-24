class AddDesignerToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :designer, :string
  end
end
