class StaticPagesController < ApplicationController

  def home
    if logged_in?
      redirect_to current_user
    end
  end

  def list
  end

  def ranking
  end

end
