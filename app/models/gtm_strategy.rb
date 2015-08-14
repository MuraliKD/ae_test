class GtmStrategy < ActiveRecord::Base
  belongs_to :user
  has_many :milestones
  has_one :market_segmentation
end
