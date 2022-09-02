Rails.application.routes.draw do
  resources :string_cleaners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'string_clean', to: 'string_clean#clean'
end
