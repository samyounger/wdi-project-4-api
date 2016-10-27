Rails.application.routes.draw do
  scope :api do
    resources :users
    resources :trades
    get 'trades', to: 'trades#index'
    post 'trades', to: 'trades#create'
    put  'trades/:id', to: 'trades#update'
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'company', to: 'companies#searchname'
    post 'getdetails', to: 'companies#getdetails'

    get 'users', to: 'users#show'
  end
end
