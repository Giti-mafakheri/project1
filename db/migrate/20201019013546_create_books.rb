class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.integer :author_id
      t.text :cover
      t.date :publishDate

      t.timestamps
    end
  end
end
