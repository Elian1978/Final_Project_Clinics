Rails.application.routes.draw do
  
  resources :appointments#, except: [:new :create]
  namespace :dashboard do
    get 'doctors/index'
  end
  
  resources :notes

  devise_for :doctors, controllers:{
    registrations: 'doctors/registrations'
  }

  devise_for :patients, controllers:{
    registrations: 'patients/registrations'
  }
  
  resources :clinics do
    resources :appointments, only: [:new, :create]
  end
  root "clinics#index"
  
  get "mantenimiento_doctor", to: 'doctors#create', as: :doctor_mant

  get "welcome_doctor", to: 'notes#index', as: :doctor_root
  get "welcome_patient", to: 'appointments#new', as: :patient_root

end

