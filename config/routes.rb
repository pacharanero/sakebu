Sakebu::Application.routes.draw do
  resources :dictations
  
  root to: "page#home"
end
