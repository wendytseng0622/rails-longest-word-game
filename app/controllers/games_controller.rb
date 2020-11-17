require 'open-uri'
class GamesController < ApplicationController

  def new
    @new = []
    10.times do
      letter = ('a'..'z').to_a.sample
      @new.push(letter)
    end
  end



# used to display a new random grid and a form
  def score
   @answer = params[:answer]

   url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
   file = open(url).read
   p file
  end

end
