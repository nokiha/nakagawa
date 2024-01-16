class Reception::SessionsController < ApplicationController
    def create
        reception = Reception.find_by(username: params[:username])
        if reception&.authenticate(params[:password])
            session[:reception_id] = reception.id 
            redirect_to :reception_root
        else
            flash.alert = "名前とパスワードが一致しません"
            redirect_to "/reception_login"
        end
    end
    
    def destroy
        session.delete(:reception_id) 
        redirect_to "/reception_login"
    end
end
