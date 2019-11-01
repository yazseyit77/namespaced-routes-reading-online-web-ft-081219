Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

<<<<<<< HEAD
  namespace :admin do
=======
  scope '/admin' do
>>>>>>> 210e5442670c4e4a96403efaaf274ff1ec4c6262
    resources :stats, only: [:index]
  end

  root 'posts#index'
end
