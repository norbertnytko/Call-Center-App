require 'rails_helper'

RSpec.describe "marketing_campaigns/index", :type => :view do
  context "with active campaigns" do
    let(:campaign) { build :campaign }
    let(:contact) { build :contact }

    it 'show contacts' do
      render
      expect(rendered).to have_content 'Bruce Wayne'
    end
  end
end
