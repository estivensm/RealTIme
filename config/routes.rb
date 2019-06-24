Rails.application.routes.draw do
	root "tasks#show"
	post "create_task", to: "tasks#create", as: "create_task" 

	mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
