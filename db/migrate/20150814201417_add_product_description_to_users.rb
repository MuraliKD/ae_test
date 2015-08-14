class AddProductDescriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :product_description, :text
  end
end
