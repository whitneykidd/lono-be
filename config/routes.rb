Rails.application.routes.draw do
  root "application#index"
  
  namespace :api do
    namespace :v1 do
      resources :days, only: [:index, :create]
      resources :user_data, only: [:index, :create]
    end
  end
end
