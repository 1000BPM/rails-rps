class PlayController < ApplicationController

  def choice
    @opponent_choice = ["rock","paper","scissors"].sample
    render ({:template => "pages_templates/outcome"})

    @print = params.fetch

  end

end
