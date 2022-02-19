Rails.application.routes.draw do
    root to: 'words#index'
    resources :words do
        resources :keywords
    end
end
