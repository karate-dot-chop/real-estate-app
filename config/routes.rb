Rails.application.routes.draw do
  get "/listings" => "listings#index"
  post "/listings" => "listings#create"
end
