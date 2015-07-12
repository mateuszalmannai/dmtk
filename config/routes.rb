Rails.application.routes.draw do
  get "tools" => "tools#index"
  get "tools/:id" => "tools#show", as: "tool"
end
