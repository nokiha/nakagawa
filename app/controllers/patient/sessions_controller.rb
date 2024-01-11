class Patient::SessionsController < ApplicationController
    def create
        patient = Patient.find_by(username: params[:username])
        if patient&.authenticate(params[:password])
            session[:patient_id] = patient.id 
        else
            flash.alert = "名前とパスワードが一致しません"
        end
        redirect_to "/patient_login"
    end
    
    def destroy
        session.delete(:patient_id) 
        redirect_to "/patient_login"
    end
end
