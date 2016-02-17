FactoryGirl.define do
  factory :contact do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    tel_number Faker::PhoneNumber.phone_number

    trait :with_active_campaign do
      association :marketing_campaign, factory: [:marketing_campaign, :active]
    end

    trait :with_inactive_campaign do
      association :marketing_campaign, factory: [:marketing_campaign, :inactive]
    end
  end
end
