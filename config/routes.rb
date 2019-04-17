Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/log_twitter_account_activity' => 'application#log_twitter_account_activity'
end
