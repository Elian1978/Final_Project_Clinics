Rails.application.routes.draw do
  resources :notes
  devise_for :doctors
  resources :clinics
  devise_for :patients
  root "clinics#index"

end
