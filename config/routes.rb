Rails.application.routes.draw do
  root 'string_cleaners#index'
  resources :unique_lists
  resources :string_cleaners
end
