Rails.application.routes.draw do


  devise_for :users, controllers: {
    sessions: "users/sessions"
  }


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
  resources :taskinfos

  devise_for :admins

  get '/all/users/:id', to: 'users#showuser', as: 'show_user'
  get "user/:task_id/assign/:user_id", to: "users#assign", as: 'assign_user'
  get "task/details/:id", to: "users#taskdetails", as: "task_details"
 
  get "check/admin", to: "admin#checkadmin", as:"admin_check"
  post "admin/match", to: "admin#match", as: "admin_match"
  root "users#index"


  namespace :admin do
    resources :admins
    resources :tasks
      get "delete/task/:id", to: "tasks#destroy", as: "tasks_delete"
      get "assign/task/:id", to: "tasks#assigntask", as: 'assign_task'
      root to: "admins#index"
  end

end
