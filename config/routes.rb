Rails.application.routes.draw do
resources :kundens

 get 'kundens' => 'kundens'
  	get 'kundens/new' => 'kundens#new'
	post 'kundens' => 'kundens#create'

root 'projects#index'

 get 'projects/new'

  	resources :projects do
		member do
			patch :complete, :started, :stopped
			
end

end
#get 'projects/quark'

end
