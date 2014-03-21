class DictationController < ApplicationController
  def add
    @dictation = Dictation.new
  end

  def delete
  end

  def view
    @dictations = current_user.dictations.order(:date)
  end

  def amend
  end
  
  def show
    @dictations = Dictation.all
  end 
end
