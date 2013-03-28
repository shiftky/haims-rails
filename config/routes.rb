HaimsRails::Application.routes.draw do
  # devise
  devise_for :users

  # root
  root :to => 'home#index'

  # リモートコントロール
  resources :remote, :defaults => { :format => 'html' }, :only => [:index]

  # 管理ページ
  resources :management, :defaults => { :format => 'html' }, :only => [:index]
  namespace :management do
    # マイコンボード
    resources :board, :defaults => { :format => 'html' }
    # 制御対象機器一覧
    resources :device, :defaults => { :format => 'html' }, :except => [:edit, :update] do
      # 赤外線リモコンの信号
      resources :ir_signal, :defaults => { :format => 'html' }, :except => [:index, :show, :edit, :update]
    end
  end
end
