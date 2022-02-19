class WordsController < ApplicationController

  def index
    @words = Word.order(updated_at: :desc).limit(1)
    @word = Word.order(firstword: :desc).limit(1)
    @word = Word.new
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

  def show
    @word = Word.find[params[:firstword]]
  end

  def rankup
    
  end


  private
  def word_params
    params.require(:word).permit!
  end

end
