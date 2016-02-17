require 'rails_helper'

RSpec.describe MarketingCampaignsController, type: :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the active marketing campaign into marketing_campain" do
      campaign = create(:marketing_campaign, :active)
      get :index
      expect(controller.marketing_campaigns).to eq([campaign])
    end
  end
end
