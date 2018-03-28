Rails.application.routes.draw do
  resources :xyzs
  resources :todos do
    resources :items
  end
end