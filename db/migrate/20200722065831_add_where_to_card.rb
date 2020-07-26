class AddWhereToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :where, :string
  end
end
