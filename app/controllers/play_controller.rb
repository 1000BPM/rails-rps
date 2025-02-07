class PlayController < ApplicationController

  def choice
    @our_choice = params.fetch(:text)
    @opponent_choice = ["rock","paper","scissors"].sample

    @result = 
    render ({:template => "pages_templates/outcome"})

  

  end

end
