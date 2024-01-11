class ApplicationController < ActionController::Base
    private def current_patient
        Patient.find_by(id: session[:patient_id]) if session[:patient_id]
    end
    helper_method :current_patient

    private def current_doctor
        Doctor.find_by(id: session[:doctor_id]) if session[:doctor_id]
    end
    helper_method :current_doctor

    private def current_reception
        Reception.find_by(id: session[:reception_id]) if session[:reception_id]
    end
    helper_method :current_reception

    private def current_administrator
        Administrator.find_by(id: session[:administrator_id]) if session[:administrator_id]
    end
    helper_method :current_administrator
end
