class ContactsController < ApplicationController
  expose(:marketing_campaign)
  expose(:contact)

  def current_user_id
    current_user.id
  end
end
