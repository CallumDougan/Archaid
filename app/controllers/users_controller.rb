class UsersController < ApplicationController
  
  # before_action :load_user, except: [:index, :create, :new]


    def index
      @users = User.all
    end

    def show

    end

    def new
      @user = User.new
    end

    def edit
    end

    def create
     @user = User.new(user_params)
     @user.save
     redirect_to user_path
    end

    def update
        @user = User.find(current_user)
        @user.update_attributes(user_params)
        redirect_to user_path
    end

    def destroy

    end



    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :content, :user_id, :article_id, :image)
    end

  
end
