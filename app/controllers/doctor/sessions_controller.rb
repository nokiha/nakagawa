class Doctor::SessionsController < ApplicationController
    def login
    end

    def create
        #patient = Patient.find_by(username: params[:username])
        doctor = Doctor.find_by(username: params[:username])
        if doctor&.authenticate(params[:password])
            session[:doctor_id] = doctor.id 
        else
            flash.alert = "名前とパスワードが一致しません"
        end
        redirect_to "/doctor_login"
    end
    
    def destroy
        session.delete(:doctor_id) 
        redirect_to "/doctor_login"
    end
end