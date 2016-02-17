require 'rails_helper'

RSpec.describe PhoneCall, type: :model do
  describe 'database columns' do
    it { should have_db_column :date }
    it { should have_db_column :length }
    it { should have_db_column :contact_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :contact }
    it { is_expected.to belong_to :marketer }
  end
end
