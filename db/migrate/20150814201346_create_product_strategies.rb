class CreateProductStrategies < ActiveRecord::Migration
  def change
    create_table :product_strategies do |t|
      t.text :feature_list
      t.text :product_principles
      t.references :user, index: true

      t.timestamps
    end
  end
end
