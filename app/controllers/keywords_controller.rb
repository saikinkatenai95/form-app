class KeywordsController < ApplicationController
  def index
    
  end

  def new
    
  end

  def create
    @word = Word.find(params[:word_id])
    @keyword = @word.keywords.new
    if @keyword.save
      redirect_to word_keywords_path(@word)
    end
  end
      

end
