require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  resources :jobs, only: [:new, :create] do
    post :oh_boy, on: :collection
  end

  root to: 'jobs#new'
end
