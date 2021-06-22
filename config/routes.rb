Rails.application.routes.draw do
  root to: 'contacs#index'
  resources :contacs
end
