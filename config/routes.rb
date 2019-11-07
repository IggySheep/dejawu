Rails.application.routes.draw do
  resources :kontakts
  resources :kundens
#root 'kundens#index'
    get 'kundens' => 'kundens'
  	get 'kundens/new' => 'kundens#new'
	post 'kundens' => 'kundens#create'

    root 'projects#index'
  	get 'projects/new' => 'projects#new'
	#post 'projects' => 'projects#create'
	#post 'projects' => 'projects#create'
  #get '/show' => 'projects#show'



  	resources :projects do
		member do
		patch :complete, :started, :stopped
			
end

end
#get 'projects/quark'

end
