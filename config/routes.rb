Rails.application.routes.draw do
  root to: "search_keywords#index"
  resources :search_keywords, only: [:index, :show]
  resources :results, only: [:index]
  resources :songs, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
