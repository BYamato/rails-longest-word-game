require 'open-uri'
class GamesController < ApplicationController

  def new
    alphabet = ('a'..'z').to_a
    @letters = 10.times.map { alphabet.sample }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @letters.include?("a")
    api_call(@word)
  end

  def api_call(word)
    request = "https://wagon-dictionary.herokuapp.com/#{word}"
    puts '_____________________________________'
    puts request
    raise
  end
end
