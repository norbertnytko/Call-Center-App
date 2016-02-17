FactoryGirl.define do
  factory :marketing_campaign do

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
