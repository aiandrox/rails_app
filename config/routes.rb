Rails.application.routes.draw do
  resources :boards, except: [:show] do
    resources :comments
  end
end
