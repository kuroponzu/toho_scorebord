class GamescoresController < ApplicationController
attr_accessor :gamescore

  def index
  end

  def show
  end

  def new
    @game_title = params[:title]
    #@current_user=User.find_by(params[:id])
    @gamescore=Gamescore.new
    @difficult = Difficulity1
    if @game_title == "東方妖々夢" then
      @difficult = Difficulity2
      @charaset = CharaYoyomu
    elsif @game_title == "東方紅魔郷" then
      @charaset = CharaKomakyo
    end
  end

  def create
    @current_user ||= User.find_by(id: session[:user_id])
    @gamescore=Gamescore.new(gamescore_params)
    #binding.pry
    @gamescore.user_id=@current_user.id
    @gamescore.save!
      flash[:success] = "スコア登録が完了しました!"
    #end
    render '/static_pages/list'
  end

  def update
    @gamesore.user_id=@user.user_id
    @series.user_id=@user.user_id
    @series.score_id=@gamescore.score_id
    @gamescore.save
    @series.save
  end

  def edit
  end

  private
  def gamescore_params
    params.require(:gamescore).permit(:name,:difficulty,:character,:score,:clear)
  end

end
