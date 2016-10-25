Rails.application.routes.draw do
  resources :trades
  scope :api do
    resources :users
    resources :trades
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'company', to: 'companies#searchname'
    post 'getdetails', to: 'companies#getdetails'
  end
end
