Rails.application.routes.draw do
  resources :venues, except: [:new, :edit]
  resources :matches, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/get-user-matches/:id' => 'matches#indexGetMatches'
  get '/users/:id/items' => 'items#user_items'

  resources :users, only: [:index, :show]
end
