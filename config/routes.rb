Rails.application.routes.draw do
  namespace :dashboard do
    get 'doctors/index'
  end
  
  resources :notes

  devise_for :doctors, controllers:{
    registrations: 'doctors/registration'
  }


  # devise_for :patients, controllers:{
  #   registrations: 'patients/registration'
  # }
  
  resources :clinics
  devise_for :patients
  root "clinics#index"

  get "welcome_doctor", to: 'notes#index', as: :doctor_root

end
