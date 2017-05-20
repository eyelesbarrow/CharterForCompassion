Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
  resources :organizations, only: [:index, :show, :new, :edit, :create] do
    put 'add_member', on: :member
  end

end
