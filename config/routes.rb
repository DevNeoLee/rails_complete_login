Rails.application.routes.draw do
  resources :posts
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout" },
                    controllers: { omniauth_callbacks: "omniauth_callbacks"}
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'
end
