class AddTimeZoneToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :time_zone, :string
  end
end
