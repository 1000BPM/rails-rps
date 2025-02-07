Rails.application.routes.draw do

get("/", {:controller => "homepage", :action => "home"})


get("/rock", {:controller => "play", :action => "choice", :text => "rock"})

get("/paper", {:controller => "play", :action => "choice", :text => "paper"})

get("/scissors", {:controller => "play", :action => "choice", :text => "scissors"})
end
