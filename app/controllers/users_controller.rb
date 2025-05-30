class UsersController < ApplicationController
    # before_action :session_delete, only: %i[new]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:locale] = @user.languge
            redirect_to root_path, notice: '登録しました'
        else    
          render :new 
        end
    end

    private

    def user_params
      params.require(:user).permit(:name, :sex, :languge)  
    end
end
