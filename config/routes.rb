Rails.application.routes.draw do
  resources :tasks do
    member do
      put :change
    end
  end
  devise_for :users
  get 'pages/home'
  get 'about' => 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
end
