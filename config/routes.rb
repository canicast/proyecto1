Rails.application.routes.draw do
  get 'home/index'

  get '/contacto', to: 'contacto#index'
  get '/cuenta', to: 'cuenta#create'
  post '/cuenta', to: 'cuenta#create'

  get '/flores', to: 'flores#index'

  post '/flores', to: 'flores#create'

  get '/flores/edit/:id', to: 'flores#edit'

  post '/flores/editar', to: 'flores#edit'

  get 'flores/ordenar/:id', to: 'flores#ordenar'

  get 'nosotros', to: 'nosotros#index'

  post '/flores/eliminar', to: 'flores#destroy'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
