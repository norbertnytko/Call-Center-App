class MarketingCampaignsController < ApplicationController
  expose(:marketing_campaigns) { current_user.marketing_campaigns.where(active: true) }
end
