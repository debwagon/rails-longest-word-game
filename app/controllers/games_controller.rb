require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    # display random grid and form
    letters = ("A".."Z").to_a
    @rand_letters = letters.sample(10)
  end

  def gorilla
    # what you get from form in NEW
    # raise
    @word = params[:word]
    session[:word] = @word
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    @dictionary = open(url).read
    @json_dic = JSON.parse(@dictionary)
    # @can_be_formed = 5
    session[:length] = @json_dic["length"]
    session[:is_word] = @json_dic["found"]
    redirect_to score_path
  end

  def score

    # @can_be_formed = 5
  end

  def home
  end
end
