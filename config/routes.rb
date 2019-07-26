Rails.application.routes.draw do
  devise_for :users
	root "tasks#show"
	post "create_task", to: "tasks#create", as: "create_task" 
	post "update_task/:id/:state", to: "tasks#update", as: "update_task"

	mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
