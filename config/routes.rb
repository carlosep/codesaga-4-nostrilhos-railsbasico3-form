Rails.application.routes.draw do

  resources :opinions

  get '/', to: 'welcome#index'
end
