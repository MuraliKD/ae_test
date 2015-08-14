class AddStartupDescriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :startup_description, :text
  end
end
