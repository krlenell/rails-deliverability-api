# == Route Map
#

Rails.application.routes.draw do
  get 'api/index', to: 'api#index'

  post 'api/register', to: 'api#register'
  post 'api/alive', to: 'api#alive'
  post 'api/report', to: 'api#report'
  patch 'api/terminate', to:'api#terminate'
end
