Rails.application.routes.draw do
  root "top#patient_login"

  get "bad_request" => "top#bad_request"
  get "forbidden" => "top#forbidden"
  get "internal_server_error" => "top#internal_server_error"

  resource :patients, only: [:new, :create]

  get "/doctor_login" => "top#doctor_login"
  get "/reception_login" => "top#reception_login"
  get "/admin_login" => "top#admin_login"
  get "/patient_login" => "top#patient_login"
  
  # 患者のルーティング
  namespace :patient do
    root "patients#index"
    resources :patients, except: [:new, :create]
    resources :doctors, only: [:index, :show] do
      resources :slots, only: [:index, :show] do
        resources :appointments do
          get "confirm",on: :member
        end
      end
    end
    resources :appointments, only: [:create]
    resources :departments, only: [:index, :show] do
      resources :slots, only: [:index, :show]
    end

    resource :session, only: [:create, :destroy]
  end

  # 医者のルーティング
  namespace :doctor  do
    root "doctors#index"
    resources :patients, only: [:index, :show] do
      get "search", on: :collection
    end
    resources :doctors, only: [:index, :show] do
      resources :appointments, only: [:index]
    end
    resource :session, only: [:create, :destroy]
    resources :check, only: [:index, :show, :destroy]
  end

  # 管理者のルーティング
  namespace :admin do
    root "top#index"
    get "/getdoctor" => "top#doctor"
    get "/doctor(/:doctor_id)/slots" => "top#slots"
    resources :patients, only: [:index, :show, :destroy] do
      get "search", on: :collection
    end
    resources :doctors do
      get "search", on: :collection
    end
    resource :session, only: [:create, :destroy]
    resources :appointments, only: [:destroy]
    resources :slots, only: [:index, :new,:show, :create, :destroy]
    resources :check, only: [:index, :show]
  end

  # 受付のルーティング
  namespace :reception do
    root "top#index"
    #resources :reception, only: [:index, :show] do
    #  resources :patients, only: [:index, :show]
     # resources :appointments, only: [:index]
     # resources :slots, only: [:index]
     # resources :check, only: [:index, :show, :create]
    #end
    resources :appointments, only: [:index, :show] do
      resources :check, only: [:index, :show, :new, :create]  do
        get "confirm",on: :member
      end
    end
    resource :session, only: [:create, :destroy]
  end
end
