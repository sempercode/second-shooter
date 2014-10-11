class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :hourly_rate, :decimal
  end
end
