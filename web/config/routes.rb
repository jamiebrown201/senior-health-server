Rails.application.routes.draw do
  root 'fitbit_auth#index'
  post "/auth/fitbit" => "fitbit_auth#make_request"
  get "/auth/fitbit/callback" => "fitbit_auth#get_response"
end
