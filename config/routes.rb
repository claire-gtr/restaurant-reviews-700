Rails.application.routes.draw do
  resources :restaurants do
    # collection do
    #   get :top
    # end
    # member do
    #   get :chef
    # end
    resources :reviews, only: [ :new, :create ] # /restaurants/:restaurant_id
  end
  # COLLECTION: many restaurants >>>> get 'restaurants/top', to: "restaurants#top"
  # MEMBER: details about ONE restaurant >>>>> get '/restaurants/:id/chef', to: 'restaurants#chef'

  resources :reviews, only: [ :destroy ]
end
