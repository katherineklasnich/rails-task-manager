Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # home page of tasks
  get "tasks", to: "tasks#index"

  # create a new task
  get "tasks/new", to: "tasks#new"

  # navigate to one task
  get "tasks/:id", to: "tasks#show", as: "task"

  # create a new task
  get "tasks/new", to: "tasks#new"

  # request to submit new task
  post "tasks", to: "tasks#create"

  # get info to update a task
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"

  #push updated info into task
  patch "tasks/:id", to: "tasks#update", as: "update"
end
