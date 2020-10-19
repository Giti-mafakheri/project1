class CreateReadingStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :reading_statuses do |t|
      t.text :state

      t.timestamps
    end
  end
end
