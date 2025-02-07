class PlayController < ApplicationController

  def choice
    @our_choice = params.fetch(:text)
    @they_choice = ["rock","paper","scissors"].sample
    
    @outcome = @they_choice.class
    
    #Rule logic
    if @our_choice == @they_choice
      @outcome = "tied"
    elsif @our_choice == "rock" && @they_choice == "paper"
        @outcome = "lost"
    elsif @our_choice == "rock" && @they_choice == "scissors"
        @outcome = "won"
    elsif @our_choice == "paper" && @they_choice == "rock"
      @outcome = "won"
    elsif @our_choice == "paper" && @they_choice == "scissors"
      @outcome = "lost"
    elsif @our_choice == "scissors" && @they_choice == "rock"
      @outcome = "lost"
    elsif @our_choice == "scissors" && @they_choice == "paper"
      @outcome = "won"
    end

    render ({:template => "pages_templates/outcome"})

  end

end
