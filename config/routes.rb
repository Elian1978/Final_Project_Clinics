Rails.application.routes.draw do
  
  devise_for :admins
  namespace :maintenance do
    resources :doctors
  end
  resources :appointments#, except:[:new :create]
  namespace :dashboard do
    get 'doctors/index'
  end
  
  resources :notes

  devise_for :doctors

  devise_for :patients
  
  resources :clinics do
    resources :appointments, only: [:new, :create]
  end
  root "clinics#index"
  
  get "welcome_doctor", to: 'notes#index', as: :doctor_root
  get "welcome_patient", to: 'appointments#new', as: :patient_root

end

