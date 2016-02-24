class UserCampaign < ActiveRecord::Base
  belongs_to :user
  belongs_to :marketing_campaign
end
