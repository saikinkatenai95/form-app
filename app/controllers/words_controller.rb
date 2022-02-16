class WordsController < ApplicationController

  def index
    @words = Word.order(updated_at: :desc).limit(1)
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new
    # binding.pry
    if @word.save
    redirect_to action: :index
    end
  end

  def rankup
    
  end 


  private
  def word_params
    params.require(:word).permit!
  end

end
