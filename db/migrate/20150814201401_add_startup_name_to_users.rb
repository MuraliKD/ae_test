class AddStartupNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :startup_name, :string
  end
end
