class TokenController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def generate
    capability = Twilio::Util::Capability.new ENV['TWILIO_ACCOUNT_SID'],
                                              ENV['TWILIO_AUTH_TOKEN']
    capability.allow_client_outgoing ENV['TWILIO_APP_SID']
    render json: { token: capability.generate() }
  end
end
