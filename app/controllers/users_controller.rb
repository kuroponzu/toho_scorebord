class UsersController < ApplicationController
  before_action :correct_user,  only: :update

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user=User.find(params[:id])
    @scorelist=Gameresult.where(user_id: @user.id)
  end

  # GET /users/new
  def new
    #logger.debug("user.newの中に入りました。")
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    #binding.pry
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "登録が完了しました。"
      redirect_to @user
    else

    end

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    if @user.update_columns(name: params[:user][:name],
      email: params[:user][:email],
      comment: params[:user][:comment])
      flash[:success] = "更新が完了しました。"
      redirect_to @user
    else
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end

    def user_profile
      params.require(:user).permit(:name,:email,:comment)
    end

    def correct_user
      @user = User.find(params[:id])
    end


end
