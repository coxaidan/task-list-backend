class AddSortOrderToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :sort_order, :string
  end
end
