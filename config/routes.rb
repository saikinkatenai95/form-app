Rails.application.routes.draw do
    root to: 'words#index'
    resources :words
    resources :keywords
    # post '/keywords(.:format)' => 'keywords#create'
end
