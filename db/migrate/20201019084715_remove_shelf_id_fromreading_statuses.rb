class RemoveShelfIdFromreadingStatuses < ActiveRecord::Migration[5.2]
  def change
    remove_column :reading_statuses, :Shelf_id, :integer
  end
end
