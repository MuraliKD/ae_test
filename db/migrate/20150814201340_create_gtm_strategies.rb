class CreateGtmStrategies < ActiveRecord::Migration
  def change
    create_table :gtm_strategies do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
