Rails.application.routes.draw do
  # we can create our own routes, passing in the method, the route and the method of the controller that
  # should be triggered.
  get 'welcome/test', to: 'welcome#index'
  # this creates all the crud routes for the coins model!
  resources :coins
  # set welcome page as the root one
  root 'welcome#index'
end
