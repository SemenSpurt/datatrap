Rails.application.routes.draw do

  root "root#index"

  get '/index', to: "root#index"
  get "/reanimation", to: "patients#all"

  get "/new-patient", to: "patients#new"
  post "/new-patient", to: "patients#create"

  get "/patients/:id", to: "patients#show"

  get "/patients/:id/edit", to: "patients#edit"
  post "/patients/:id/edit", to: "patients#update"

  get "/patients/:patient_id/observations/new", to: "observations#new"
  post "/patients/:patient_id/observations/new", to: "observations#create"

  get "/patients/:patient_id/observations/:id/edit", to: "observations#edit"
  post "observations/:id/edit", to: "observations#update"

  resources :patients

  resources :patients do
    resources :observations, shallow: true

  end
end
