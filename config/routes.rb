Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  #the following line creates custom route for show...
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

 
# get 'pages/home'

get 'about-me', to: 'pages#about'

get 'contact', to: 'pages#contact'

  resources :blogs

root to: 'pages#home'
end
