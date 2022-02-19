class KeywordsController < ApplicationController
  def index
    @keywords = Keyword.order(updated_at: :desc).limit(1)
  end

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new
    if @keyword.save
      redirect_to action: :index
    end
  end

end
