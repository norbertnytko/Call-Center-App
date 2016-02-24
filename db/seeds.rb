puts "Seeding ..."

active_campaign = MarketingCampaign.create!(active: true)
other_active_campaign = MarketingCampaign.create!(active: true)
inactive_campaign = MarketingCampaign.create!(active: false)

User.create!(
  email: 'admin@admin.com',
  password: '12345678',
  admin: true,
)

user = User.create!(
  email: 'user@user.com',
  password: '12345678',
  admin: false
)
user.marketing_campaigns = [active_campaign, inactive_campaign]

other_user =  User.create!(
  email: 'other@user.com',
  password: '12345678',
  admin: false
)

other_user.marketing_campaigns = [active_campaign, other_active_campaign]

Contact.create!(
  first_name: 'Norbert',
  last_name: 'Nytko',
  tel_number: '+48662919945',
  marketing_campaign: active_campaign,
  id: 88888)

15.times do
  Contact.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tel_number: Faker::PhoneNumber.phone_number,
    marketing_campaign: active_campaign)
end

10.times do
  Contact.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tel_number: Faker::PhoneNumber.phone_number,
    marketing_campaign: other_active_campaign)
end

5.times do
  Contact.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tel_number: Faker::PhoneNumber.phone_number,
    marketing_campaign: inactive_campaign)
end

contacts = Contact.all
30.times do
  PhoneCall.create!(
    date: Faker::Date.between(15.days.ago, Date.today),
    duration: Random.rand(1..5),
    contact: contacts.sample,
    user: User.all.sample
  )
end
