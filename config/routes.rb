Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  authenticated :user do
    root "pages#index", as: :authenticated_root
  end
  root to: 'pages#welcome'
end
