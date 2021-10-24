Rails.application.routes.draw do
  root 'heros#index'
  resources :heros #** Gerenciador de Rotas **
end
