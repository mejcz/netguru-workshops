Rails.application.routes.draw do
  root 'visitors#index'

  devise_for :users

  resources :students do
    get :subjects
  end
  resources :teachers do
    get :subjects
  end
  resources :visitors

  get 'report/subjects', to: 'reports#subjects', as: 'report_subjects'
end
