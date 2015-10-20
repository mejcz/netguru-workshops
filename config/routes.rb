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

  resources :student_payments, only: %i(index)

  get 'reports/subjects', to: 'reports#subjects', as: 'report_subjects'
end
