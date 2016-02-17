require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'database columns' do
    it { should have_db_column :first_name }
    it { should have_db_column :last_name }
    it { should have_db_column :tel_number }
    it { should have_db_column :marketing_campaign_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :marketing_campaign }
  end
end
