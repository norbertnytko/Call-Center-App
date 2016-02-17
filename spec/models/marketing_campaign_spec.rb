require 'rails_helper'

RSpec.describe MarketingCampaign, type: :model do
  describe 'database columns' do
    it { should have_db_column :active }
  end

  describe 'associations' do
    it { is_expected.to have_many :contacts }
  end
end
