class PhoneCall < ActiveRecord::Base
  belongs_to :contact
  belongs_to :marketer, class_name: 'User', foreign_key: :user_id
end
