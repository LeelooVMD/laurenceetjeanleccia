Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'laurenceleccia', to: "pages#laurenceleccia"
  get 'jeanleccia', to: "pages#jeanleccia"
  get 'laurenceleccia/lestoiles', to: "inbetweens#index"
  get 'jeanleccia/lestoiles', to: "pages#jean_lestoiles"
  resources :articles
  resources :pictures
  resources :collections
  resources :inbetweens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
