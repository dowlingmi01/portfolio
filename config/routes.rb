Rails.application.routes.draw do
  resources :folios

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'tech-news', to: 'pages#tech_news'

  root to: 'pages#home'
end
