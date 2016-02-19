Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  post 'twilio/call_contact' => 'twilio#call_contact'
  post 'token/generate' => 'token#generate'

  root 'marketing_campaigns#index'
  resources :marketing_campaigns do
    resources :contacts do
      resources :phone_calls
    end
  end
end
