Rails.application.routes.draw do
  namespace :admin do
    resources :imperavi_assets
    match '/imperavi_assets/destroy/:id(/:return)' => 'imperavi_assets#destroy', :as => :imperavi_asset_destroy
  end
  match "/redactor/plugins/image.html" => "admin/imperavi_assets#new"
end
