Rails.application.routes.draw do
  root 'marketing_campaigns#index'
  resources :marketing_campaigns do
    resources :contacts do
      resources :phone_calls
    end
  end
end
