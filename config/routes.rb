Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    resource :user, only: %i(create)
    resource :session, only: %i(create destroy show)
    resources :posts, except: %i(new show)
    resources :pictures, only: %i(create index destroy)
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "static_pages#root"
end
