Rails.application.routes.draw do
  get "admin/index", as: 'admin_index'
  get "admin/new"
  get "admin/edit"
  get "admin/destroy"
  devise_for :admins

  devise_for :users, controllers: {
    sessions: "users/sessions"
  }

  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  resources :users
  resources :admins
  resources :taskinfos

  get '/all/users/:id', to: 'users#showuser', as: 'show_user'
  get "user/:task_id/assign/:user_id", to: "users#assign", as: 'assign_user'
  get "task/details/:id", to: "users#taskdetails", as: "task_details"
  get "assign/task/:id", to: "tasks#assigntask", as: 'assign_task'

  root "users#index"
  resources :tasks do
    member do
      patch :start
    end
  end
end
