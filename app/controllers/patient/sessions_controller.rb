class Patient::SessionsController < ApplicationController
    def create
        patient = Patient.find_by(username: params[:username])
        if patient&.authenticate(params[:password])
            session[:patient_id] = patient.id 
            redirect_to :patient_root
        else
            flash.alert = "名前とパスワードが一致しません"
            redirect_to "/patient_login"
        end
        
    end
    
    def destroy
        session.delete(:patient_id) 
        redirect_to "/patient_login"
    end
end
