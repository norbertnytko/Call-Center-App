class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  has_many :phone_calls
  has_many :user_campaigns
  has_many :marketing_campaigns, through: :user_campaigns
end
