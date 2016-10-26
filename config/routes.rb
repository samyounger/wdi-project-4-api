Rails.application.routes.draw do
  scope :api do
    resources :users
    resources :trades
    post 'trades', to: 'trades#create'
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'company', to: 'companies#searchname'
    post 'getdetails', to: 'companies#getdetails'

    get 'users', to: 'users#show'
  end
end
