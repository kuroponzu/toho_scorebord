class GameresultsController < ApplicationController
#before_action :gamescore_params,  only: :create


  def show
  end

  def new
    @game_title = params[:title]
    #@current_user=User.find_by(params[:id])
    @gameresult = Gameresult.new difficulty:"" ,character:""
    @difficulty = Gamedetail.where(gamename: @game_title).
    group("difficulty").order(:id).select("difficulty")
    @gamecharactor = Gamedetail.where(gamename: @game_title).
    group("character").order(:id).select("character")
    #binding.pry
  end

  def create
    #binding.pry
    #@current_user ||= User.find_by(id: session[:user_id])
    @current_user ||= User.new
    @gamedetail_id = Gamedetail.find_by(gamename: params[:gameresult][:name],difficulty: params[:gameresult][:difficulty],character: params[:gameresult][:character]).id
    @gamescoretest = Gameresult.new
    #binding.pry
    @gameresult = Gameresult.new
    @gameresult.user_id = session[:user_id]
    @gameresult.attributes = {gamedetail_id: @gamedetail_id,score: params[:gameresult][:score],clear: params[:gameresult][:clear]}
    #@gameresult.user_id = session[:user_id]
    binding.pry
    @gameresult.save!
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
    params.require(:gameresult).permit(:gamedetail_id,:score,:clear)
  end

end
