class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!


  def call_contact
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hello. Connecting you the customer now.'
      r.Dial callerId: ENV['TWILIO_NUMBER'] do |d|
        d.Number params[:Number]
      end
    end
    render_twiml response
  end
end
