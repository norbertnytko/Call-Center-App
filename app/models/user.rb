class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  belongs_to :marketing_campaign
  has_many :phone_calls
end
