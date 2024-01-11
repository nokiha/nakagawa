class Reception::SessionsController < ApplicationController
    def create
        reception = Reception.find_by(username: params[:username])
        if reception&.authenticate(params[:password])
            session[:reception_id] = reception.id 
        else
            flash.alert = "名前とパスワードが一致しません"
        end
        redirect_to "/reception_login"
    end
    
    def destroy
        session.delete(:reception_id) 
        redirect_to "/reception_login"
    end
end
