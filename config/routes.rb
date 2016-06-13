Rails.application.routes.draw do
resources :supporters
post '/' => 'home#index', as: :home
get '/' => 'home#index'




end
