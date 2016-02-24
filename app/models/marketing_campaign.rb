class MarketingCampaign < ActiveRecord::Base
  has_many :contacts
  has_many :user_campaigns
  has_many :users, through: :user_campaigns
end
