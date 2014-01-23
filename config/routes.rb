Onboard::Application.routes.draw do
  
  # this links urls with your rooms controller so you need 
  # to use the same words
  resources :rooms

  # go to homepage. This translates root as being homepage (index)
  root "rooms#index"

end
