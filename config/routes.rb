Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
