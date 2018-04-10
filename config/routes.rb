Blogger::Application.routes.draw do
  resources :articles
  resources :articles do
  resources :comments
end
resources :tags
resources :profiles

resources :profile_sessions, only: [ :new, :create, :destroy ]

get 'login'  => 'profile_sessions#new'
get 'logout' => 'profile_sessions#destroy'


end
