Pling::Application.routes.draw do

#  match 'users#new', to: 'companies#register'
#  resources :users, :companies
#  match '/companies' => 'companies#show'
#  match 'companies#show' => 'companies/:company_id/show'

  resources :companies do
    resources :users 
  end

  match '/companies/:company_id/register' => 'users#new' 
  match '/companies/:company_id/new' => 'users#new' 

  root :to => redirect("http://www.palmling.com")

  # match '/traveler', to: 'users#new', user_type: "traveler"
  # match '/translator', to: "users#new", user_type: "translator"

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
