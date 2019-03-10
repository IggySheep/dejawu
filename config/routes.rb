Rails.application.routes.draw do


root 'projects#index'

  	resources :projects do
		member do
			patch :complete, :started, :stopped
			
end

end
#get 'projects/quark'

end
