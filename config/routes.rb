Rails.application.routes.draw do

get("/", {:controller => "homepage", :action => ""})


get("/rock", {:controller => "play", :action => "choice"})

get("/paper", {:controller => "play", :action => "choice"})

get("/scissors", {:controller => "play", :action => "choice"})
end
