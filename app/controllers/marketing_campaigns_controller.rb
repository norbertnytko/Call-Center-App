class MarketingCampaignsController < ApplicationController
  expose(:marketing_campaigns) { MarketingCampaign.where(active: true) }
end
