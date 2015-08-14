class CreateMarketSegmentations < ActiveRecord::Migration
  def change
    create_table :market_segmentations do |t|
      t.references :gtm_strategy, index: true

      t.timestamps
    end
  end
end
