Rails.application.routes.draw do
  post 'home/create' => 'home#create'
  get 'home/index' => 'home#index'
  get 'home/edit' => 'home#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
