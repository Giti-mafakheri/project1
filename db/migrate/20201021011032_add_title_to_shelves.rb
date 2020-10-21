class AddTitleToShelves < ActiveRecord::Migration[5.2]
  def change
    add_column :shelves, :title, :text
  end
end
