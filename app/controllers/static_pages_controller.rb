class StaticPagesController < ApplicationController

  def home
    logger.debug("static_pages#homeの中に入りました。")
  end
end
