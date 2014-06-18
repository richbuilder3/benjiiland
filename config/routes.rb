Rails.application.routes.draw do

  root to: "home#index"

  devise_for :users, :controllers => { :registrations => :registrations }

  devise_scope :user do
    match '/signin',  to: 'devise/sessions#new', via: 'get'
  end
  match '/success',  to: 'home#success', via: 'get'

end