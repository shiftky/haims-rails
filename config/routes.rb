HaimsRails::Application.routes.draw do
  # devise
  devise_for :users

  # root
  root :to => 'home#index'

  # 管理ページ
  resources :management, :defaults => { :format => 'html' }, :only => [:index]
  namespace :management do
  # マイコンボード
  resources :board, :defaults => { :format => 'html' }
  end
end
