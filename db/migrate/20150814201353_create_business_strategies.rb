class CreateBusinessStrategies < ActiveRecord::Migration
  def change
    create_table :business_strategies do |t|
      t.text :vision
      t.text :principles
      t.string :business_model
      t.string :form_factor
      t.string :pricing
      t.string :sales
      t.references :user, index: true

      t.timestamps
    end
  end
end
