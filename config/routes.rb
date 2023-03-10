Rails.application.routes.draw do
# READ
  get "tasks", to: "tasks#index"

# CREATE
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

# READ ONE
  get "tasks/:id", to: "tasks#show", as: :task

# UPDATE 
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"

# DELETE
  delete "tasks/:id", to: "tasks#destroy"
end
