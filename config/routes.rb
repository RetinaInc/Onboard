Onboard::Application.routes.draw do
  
  
  # this links urls with your rooms controller so you need 
  # to use the same words
  resources :rooms

# sign up our users to the site
  resources :users

  # log in and log out of our site
  # session is in singular whereas the others
  # are plural because you can only do one session at a time

  resource :session 

  # go to homepage. This translates root as being homepage (index)
  root "rooms#index"

end
