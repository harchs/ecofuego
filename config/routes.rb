Ecofuego::Application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

end
