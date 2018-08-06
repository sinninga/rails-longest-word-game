require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.shuffle[0,10]
  end

  def score
    @input = params[:longest_word].split(" ")[0].chars
    @letters = params[:letters].split(" ")
    if input_included?(@input, @letters)
      @result = "You win! Your score is #{@input.length}"
    else
      @result = "You can't make that word with these letters!"
    end
    # is_a_word?(@input)
  end

  private

  def input_included?(input, letters)
    input.all? {|element| element.in?(letters)}
  end

  def is_a_word?(input)
  end

end

