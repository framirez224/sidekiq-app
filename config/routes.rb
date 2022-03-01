require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  mount Sidekiq::Web => '/sidekiq'

  resource 'jobs', only: [:new, :update]
end
