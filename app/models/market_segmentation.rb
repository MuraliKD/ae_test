class MarketSegmentation < ActiveRecord::Base
  belongs_to :gtm_strategy
  has_many :acquisition_tracks
end
