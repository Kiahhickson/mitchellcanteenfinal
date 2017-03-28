Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get 'store/index'
  resources :categories
  resources :products do
    get :who_bought, on: :member
  end

  resources :users
  resources :sessions
  resources :orders
  resources :line_items
  resources :carts
    
  get "/pages/:page" => "pages#show"
 
  root 'store#index', as: 'store'

end


