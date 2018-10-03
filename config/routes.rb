Rails.application.routes.draw do
  devise_for :users
  namespace :dashboard do
    root to: 'dashboard#index'
  end

  root to: 'home#index'
end
