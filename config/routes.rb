Rails.application.routes.draw do
  scope :api do
    resources :users
    resources :companies
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'company', to: 'companies#searchname'
    post 'getdetails', to: 'companies#getdetails'
  end
end
