class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update]

def show
#@user= User.find(params[:id])
@articles = @user.articles
end

def index
    @users = User.all
end
    def new
        @user = User.new
    end

    def update  
       #@user = User.find(params[:id])   
    end
    def edit
        #@user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)

        if @user.save 
            session[:user_id] = @user.id
            flash[:notice] = "Welcome to the Star App ,#{@user.username} you have successfully signed up"
            redirect_to articles_path
           
       else
           render 'new'
       end
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
      end
end