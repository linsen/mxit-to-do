MxitToDo::Application.routes.draw do

  match '/add' => 'list#add', :as => :add_item, :via => [:get, :post]

  match '/complete/:id' => 'list#complete', :as => :complete_item

  root :to => 'list#index'

end
