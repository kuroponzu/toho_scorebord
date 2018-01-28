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
  end

  def create
    #binding.pry
    #@current_user ||= User.find_by(id: session[:user_id])
    @current_user ||= User.new
    @gamedetail_id = Gamedetail.find_by(gamename: params[:gameresult][:name],difficulty: params[:gameresult][:difficulty],character: params[:gameresult][:character]).id
    @gamescoretest = Gameresult.new
    @gameresult = Gameresult.new
    @gameresult.user_id = session[:user_id]
    @gameresult.attributes = {gamedetail_id: @gamedetail_id,score: params[:gameresult][:score],clear: params[:gameresult][:clear]}
    #@gameresult.user_id = session[:user_id]
    if @gameresult.save
      flash[:success] = "スコア登録が完了しました!"
      render '/static_pages/list'
    else
      flash[:danger] = "スコア登録が失敗しました。半角数字で入力して下さい。"
      render '/static_pages/list'
    end
  end

  def destroy
    score_id = params[:score_id]
    if Gameresult.find_by_sql(['Delete from gameresults where id = ?',score_id])
      flash[:success]="chinko"
    else
      flash[:false]="unko"
    end
    redirect_to current_user
  end

  def update
  end

  def edit
  end

  private
  def gamescore_params
    params.require(:gameresult).permit(:gamedetail_id,:score,:clear)
  end

end
