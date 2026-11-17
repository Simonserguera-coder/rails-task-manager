Rails.application.routes.draw do
  # Afficher toutes les tâches
  get "tasks", to: "tasks#index"

  # Créer une tâche
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Consulter une tâche
  get "tasks/:id", to: "tasks#show", as: :task

  # Modifier une tâche
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Supprimer une tâche
  delete "tasks/:id", to: "tasks#destroy"

  # Vérifier le fonctionnement de Rails
  get "up" => "rails/health#show", as: :rails_health_check
end
