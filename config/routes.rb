Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

resources "places"
resources "entries"

  #get("/entries", {:controller => "entries", :action => "index"})
  #get("/places", {:controller => "places", :action => "index"})

  #get("/entries/:id", :controller => "entries", :action =>"show")
  #get("/places/:id", :controller => "places", :action =>"show")

end
