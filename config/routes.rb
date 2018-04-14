Rails.application.routes.draw do
  devise_for :users
  root 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api do
    get :debug, to: 'base#debug'
    root 'base#debug'
  end
end
