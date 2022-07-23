class SessionsController < ApplicationController
    def new 
        @user=User.new  
    end
    def create 
        user=User.find_by(username: params[:session][:username])
       if user && user.authenticate(params[:session][:password])
        #good scenario
        session[:user_id]=user.user.id 
        flash[:success] ='You have Successfully Logged in'
        redirect_to root_path
       else
        flash.now[:error] 'there was somthing wrong'
        render 'new'
       end
    end

    def destroy 
        session[:user_id]=nil
        flash[:success]="You have successfully Logged out"
        redirect_to login_path
    
end
