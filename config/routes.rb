Rails.application.routes.draw do
  root "top#patient_login"

  get "bad_request" => "top#bad_request"
  get "forbidden" => "top#forbidden"
  get "internal_server_error" => "top#internal_server_error"

  #resource :account, only: [:new, :create]
  resource :patients, only: [:new, :create]
  #resource :doctors, only: []

  get "/doctor_login" => "top#doctor_login"
  get "/reception_login" => "top#reception_login"
  get "/admin_login" => "top#admin_login"
  get "/patient_login" => "top#patient_login"
  
  # 患者のルーティング
  namespace :patient do
    root "patients#index"
    resources :patients, except: [:new, :create]
    #resource :account, only: [:edit, :update, :new, :create]
    resources :appointments, only: [:index, :edit]
    resources :departments, only: [:index] do
      resources :slots, only: [:index]
    end
    resource :session, only: [:create, :destroy]
    #resources :patients, only: [:index, :show] do
    #  resources :appointments, only: [:index]
    #  resources :slots, only: [:index]
    #end
  end

  # 医者のルーティング
  namespace :doctor  do
    root "doctors#index"
    resources :doctors, only: [:index, :show] do
      resources :patients, only: [:index, :show]
      resources :appointments, only: [:index]
    end
    resource :session, only: [:create, :destroy]
  end

  # 管理者のルーティング
  namespace :admin do
    root "top#index"
    resources :patients, only: [:index, :show, :destroy] do
      get "search", on: :collection
    end
    resources :doctors do
      get "search", on: :collection
    end
    resource :session, only: [:create, :destroy]
  end

  namespace :reception do
    root "reception#index"
    resources :reception, only: [:index, :show] do
      resources :patients, only: [:index, :show]
      resources :appointments, only: [:index]
      resources :slots, only: [:index]
      resources :check, only: [:index, :show, :create]
    end
    resource :session, only: [:create, :destroy]
  end
end
