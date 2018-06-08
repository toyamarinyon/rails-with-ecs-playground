Rails.application.routes.draw do
  resources :ip_logs
  resource :ip_info, only: %i[show]
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
