class Admin::SessionsController < ApplicationController
    def create
        administrator = Administrator.find_by(username: params[:username])
        if administrator&.authenticate(params[:password])
            session[:administrator_id] = administrator.id 
        else
            flash.alert = "名前とパスワードが一致しません"
        end
        redirect_to "/admin_login"
    end
    
    def destroy
        session.delete(:administrator_id) 
        redirect_to "/admin_login"
    end
end
