class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.text :review
      t.integer :user_id
      t.integer :readingStatus_id
      t.date :dateAdded
      t.date :dateRead

      t.timestamps
    end
  end
end
