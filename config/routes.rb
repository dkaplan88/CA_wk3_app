CAWk3App::Application.routes.draw do

get "items", :controller => "menu", :action => "index"

get "items/new", :controller => "menu", :action => "new"
post "items/create", :controller => "menu", :action => "create"

get "items/:id/edit", :controller => "menu", :action => "edit"
put "items/:id", :controller => "menu", :action => "update"

get "items/:id", :controller => "menu", :action => "show"
delete "items/:id", :controller => "menu", :action => "delete"

end