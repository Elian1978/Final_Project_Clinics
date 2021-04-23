Rails.application.routes.draw do
  resources :clinics
  devise_for :patients
  root "home#index"
end
