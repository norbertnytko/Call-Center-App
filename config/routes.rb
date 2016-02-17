Rails.application.routes.draw do
  devise_for :users
  root 'marketing_campaigns#index'
  resources :marketing_campaigns do
    resources :contacts do
      resources :phone_calls
    end
  end
end
