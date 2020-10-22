class AddContinousLoginToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :continous_login, :integer
  end
end
