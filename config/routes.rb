Rails.application.routes.draw do
  get "/", to: "main#index"

  get "/blog", to: "blogs#new"
  post "/blog", to:"blogs#create"

  get "/sign_up", to:"registrations#new"
  post "/sign_up", to:"registrations#create"

end
