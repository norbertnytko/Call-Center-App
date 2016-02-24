class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!


  def call_contact
    phone_call = PhoneCall.create(call_sid: params[:CallSid])
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hello. Connecting you the customer now.'
      r.Dial callerId: ENV['TWILIO_NUMBER'], action: twilio_create_call_info_path do |d|
        d.Number params[:Number]
      end
    end
    render_twiml response
  end

  def create_call_info
    phone_call = PhoneCall.find_by(call_sid: params[:CallSid])
    phone_call.update_attribute(:duration, params[:DialCallDuration])
    render nothing: true
  end
end
