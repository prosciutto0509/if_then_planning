class AddCompleteToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :complete, :integer, default: 0, null: false
  end
end
