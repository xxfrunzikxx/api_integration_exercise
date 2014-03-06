ApiIntegrationExercise::Application.routes.draw do

  resources :persons, only: :show
end
