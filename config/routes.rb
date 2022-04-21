Rails.application.routes.draw do
  # resources :birthdays
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  devise_for :users
  root 'bookmarks#index'
  # resources :bookmarks
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      resources :bookmarks
      resources :birthdays
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
