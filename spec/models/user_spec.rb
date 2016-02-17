require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'database columns' do
    it { should have_db_column :marketing_campaign_id }
    it { should have_db_column :admin }

    it { should have_db_column :email }
    it { should have_db_column :encrypted_password }

    it { should have_db_column :reset_password_sent_at }
    it { should have_db_column :remember_created_at }
    it { should have_db_column :sign_in_count }
    it { should have_db_column :current_sign_in_at }
    it { should have_db_column :last_sign_in_at }
    it { should have_db_column :current_sign_in_ip }
    it { should have_db_column :last_sign_in_ip }
  end

  describe 'associations' do
    it { is_expected.to belong_to :marketing_campaign }
    it { is_expected.to have_many :phone_calls }
  end

end
