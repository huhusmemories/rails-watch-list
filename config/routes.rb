Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end

# Need a route for bookmark
# New method and create
# Nested resources for bookmarks (new and create)
# Delete doesnt need to be nested
