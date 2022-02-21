Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/laurenceleccia', to: "pages#laurenceleccia"
  get 'pages/jeanleccia', to: "pages#jeanleccia"
  get 'pages/laurenceleccia/lestoiles', to: "pages#laurence_lestoiles"
  get 'pages/jeanleccia/lestoiles', to: "pages#jean_lestoiles"
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
