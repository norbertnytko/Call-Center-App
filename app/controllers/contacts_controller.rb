class ContactsController < ApplicationController
  expose(:marketing_campaign)
  expose(:contact)
  expose(:phone_calls) {contact.phone_calls.where.not(duration: nil)}
end
