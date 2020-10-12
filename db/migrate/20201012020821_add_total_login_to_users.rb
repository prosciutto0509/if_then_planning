class AddTotalLoginToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total_login, :integer
  end
end
