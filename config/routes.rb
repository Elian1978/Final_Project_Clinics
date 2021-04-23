Rails.application.routes.draw do
  devise_for :doctors
  resources :clinics
  devise_for :patients
  root "patients#sign_in"

end
