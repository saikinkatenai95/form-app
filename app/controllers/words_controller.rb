class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    # binding.pry
    if @word.save
    redirect_to action: :index
    end
  end


  private
  def word_params
    params.require(:word).permit!
  end

end
