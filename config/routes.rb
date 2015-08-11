Rails.application.routes.draw do

  root to: 'users#sign_in'

  resources :recipes do
    resources :comments
  end
  get '/converter', to: 'pages#converter'
  get '/temp', to: 'pages#temp'
  get '/user/recipes', to: 'users#index'
  # could also nest recipes under users to have full CRUD functionality.
  # Check out shallow nesting as well -http://edgeguides.rubyonrails.org/routing.html#shallow-nesting
  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#sign_in!'
  get '/sign_up', to: 'users#sign_up'
  post '/sign_up', to: 'users#sign_up!'
  get '/sign_out', to: 'users#sign_out'
end
