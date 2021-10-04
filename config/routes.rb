Rails.application.routes.draw do
  resources :categories, except: %i[show new edit], path: 'adm/categories'
  resources :modalities, except: %i[show new edit], path: 'adm/modalities'
end
