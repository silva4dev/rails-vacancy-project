Rails.application.routes.draw do
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "jobs/details/:id", to: "jobs#show", as: "jobs_details"

  post "jobs/details/:id/apply", to: "job_applications#create", as: "job_applications"

  root "jobs#index"
end
