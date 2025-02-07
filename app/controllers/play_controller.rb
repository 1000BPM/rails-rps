class PlayController < ApplicationController

  def choice
    @opponent_choice = ["rock","paper","scissors"].sample
    render ({:template => "pages_templates/outcome"})

  end

end
