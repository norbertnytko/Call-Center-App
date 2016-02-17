class MarketingCampaign < ActiveRecord::Base
  has_many :contacts
  has_many :marketers, class_name: 'User'
end
