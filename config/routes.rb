Rails.application.routes.draw do

  get "/HowTube", to: "search#index"
  post "/HowTube", to: "search#update"
end
