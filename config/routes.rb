Rails.application.routes.draw do

  get 'books' => 'homes#books'
  post 'books' => 'homes#create'
  get 'books/:id' => 'homes#show'
  resources :homes
  resources :books
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'homes#top'


end
