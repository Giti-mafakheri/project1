class RemoveTitleFrombooksShelves < ActiveRecord::Migration[5.2]
  def change
    remove_column :books_shelves, :title, :text
  end
end
