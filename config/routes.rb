Rails.application.routes.draw do
  root to: 'homes#top'
  get 'search' => 'orders#search'
  get 'complete' => 'orders#complete'
  resources :orders
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
