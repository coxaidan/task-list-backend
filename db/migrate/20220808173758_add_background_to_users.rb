class AddBackgroundToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :background, :integer
  end
end
