Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api do

    # 抓取原始数据
    post 'adverts' => 'advert#adverts'
    post 'discovers' => 'discover#discovers'
    get :auth, to: 'base#auth'
    root 'base#debug'
  end
end
