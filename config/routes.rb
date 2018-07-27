Rails.application.routes.draw do
  #get 'posts/new'
  get  'welcome/index'
    resources :articles
  #post "welcome" => "welcome#create"
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
