class CreateAcquisitionTracks < ActiveRecord::Migration
  def change
    create_table :acquisition_tracks do |t|
      t.string :user
      t.string :customer
      t.references :market_segmentation, index: true
      t.string :user_activity
      t.string :customer_activity
      t.string :plan_title
      t.datetime :date_scheduled

      t.timestamps
    end
  end
end
