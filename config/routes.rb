Rails.application.routes.draw do
  root "tools#index"
  get "tools" => "tools#index"
  get "tools/:id" => "tools#show", as: "tool"
  get "tools/:id/edit" => "tools#edit", as: "edit_tool"
  patch "tools/:id" => "tools#update"
end
