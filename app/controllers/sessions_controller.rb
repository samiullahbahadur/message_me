class SessionsController < ApplicationController
    def new 
        @user=User.new  
    end
    def create 
        user = User.find_by(username: params[:username])
        if user.present? && user.authenticate(params[:password])
        #good scenario
        session[:user_id]=user.id 
        flash[:notice] ='You have Successfully Logged in'
        redirect_to root_path
       else
        flash.now[:alert]= 'invalid  authentication  username or password'
        render 'new'
       end
    end

    def destroy 
        session[:user_id]=nil
        flash[:notice]="You have successfully Logged out"
        redirect_to login_path
    end
    
end
