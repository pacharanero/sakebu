class DictationController < ApplicationController
  def add
  end

  def delete
  end

  def view
    @dictations = current_user.dictations.order(:date)
  end

  def amend
  end
end
