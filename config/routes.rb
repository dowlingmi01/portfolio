Rails.application.routes.draw do
  resources :folios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  get 'tech-news', to: 'pages#tech_news'
end
