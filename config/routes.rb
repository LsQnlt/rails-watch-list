Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[new create delete]
  end
end
