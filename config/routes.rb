require 'sidekiq/web'
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'matches/index'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'matches/show'
    end
  end

  mount Sidekiq::Web, at: '/sidekiq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
