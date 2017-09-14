Rails.application.routes.draw do
  resources :comments
  resources :users , except: [:new]
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new' 
  get 'login', to: 'login#new'
  post 'login', to: 'login#create'
  delete 'logout', to: 'login#destroy'
end
