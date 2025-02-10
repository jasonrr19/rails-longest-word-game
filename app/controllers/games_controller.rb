class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ("a".."z").to_a.sample
    end
  end

  def score

    @answer = params[:answer]
    @letters = params[:letters]
    if @answer.split("").all? {|letter| @letters.count(letter) == @answer.split("").count(letter) }
      #if yes, then if it's a real word through API.
      @result = "included"
    else
      @result = "not included"
    end
  end
end
