Rails.application.routes.draw do
  get '/enter', to: 'sessions#new'
  #create a new session
  post '/enter', to: 'sessions#create'
  #logout
  get '/logout', to: 'sessions#destroy'

  resource :class_attendees, only: [:create, :index]
  get '/class-attendance', to: 'class_attendees#new'

  get 'users/new'
  post '/users', to: 'users#create'

  root to: 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
