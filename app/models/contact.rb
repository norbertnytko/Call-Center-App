class Contact < ActiveRecord::Base
  belongs_to :marketing_campaign
  has_many :phone_calls
end
