Rails.application.routes.draw do
  resources :clinics
  devise_for :patients
  root "patients#sign_in"

end
