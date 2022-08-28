Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#index'
  resources :books do
    resources :book_borrows, only: :create
  end

  resources :magazines

  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
end
