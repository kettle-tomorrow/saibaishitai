Rails.application.routes.draw do
  root 'top#index'
  scope '/api', module: :api, as: 'api' do
    resources :cultivation_records, only: [:create]
  end
end
