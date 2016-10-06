Rails.application.routes.draw do
    get 'users/regist'
    resources :users do

    resources :bookings do
      collection do
        get 'history'
        get 'mybooking'
        get 'allhistory'
        get 'myhistory'

      end
    end
      end

resources :rooms do
  collection do
  get 'memroom'

  end
  member do
  get 'memshow'
  end
  resources :bookings do
    collection do
      get 'history'
      get 'memind'


    end
  end
end

    resources :sessions
    get   'login'   => 'sessions#new'
    post  'login'   => 'sessions#create'
    get   'logout'  => 'sessions#destroy'
    get   'password_change' => 'sessions#password'
    post  'password_change' => 'sessions#password_change'
    get   'sessions/new'
    root 'sessions#new'



	root :to => "rooms#index"
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end