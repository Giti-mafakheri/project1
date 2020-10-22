class DropBooksGenres < ActiveRecord::Migration[5.2]
  def change
    drop_table :books_genres
  end
end
