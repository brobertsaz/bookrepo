Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers

  namespace :dashboard do
    root to: 'dashboard#index'
  end

  root to: 'home#index'
end
