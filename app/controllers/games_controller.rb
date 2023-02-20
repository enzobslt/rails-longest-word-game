class GamesController < ApplicationController
  def new
    @grid = []
    letters = ('A'..'Z').to_a
    10.times do
      @grid << letters.sample
    end
    return @grid
  end

  def score
    @word = params[:answer].split('')
    @word_in_letters = []
    @word.each do |letter|
      @word_in_letters << letter
    end

    @word_in_letters.each do |row|
      if @word.include?(row)
        @result = "Le mot est valide"
      else
        break
        return @result = "Le mot est invalide"
      end
    end
  end
end
