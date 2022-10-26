Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'

  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end

end
