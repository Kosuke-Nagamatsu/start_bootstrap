Rails.application.routes.draw do
  root to: 'contacs#top'
  resources :contacs do
    collection do
      get :top
    end
  end
end
