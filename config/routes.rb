Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  patch '/users/:id/update_profile_picture', to: 'users/registrations#update_profile_picture', as: 'update_profile_picture'
  constraints ->(request) { request.env['warden'].user.nil? } do
    root to: 'pages#landing'
  end
  root to: 'pages#home', as: :authenticated_root
  get '/home', to: 'pages#home'

end
