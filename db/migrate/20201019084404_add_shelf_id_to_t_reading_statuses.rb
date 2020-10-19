class AddShelfIdToTReadingStatuses < ActiveRecord::Migration[5.2]
  def change
    add_column :reading_statuses, :shelf_id, :integer
  end
end
