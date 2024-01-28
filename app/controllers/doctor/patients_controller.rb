class Doctor::PatientsController < Doctor::Base
    def index
        @doctor = current_doctor
        @patients = @doctor.patients.order("id").distinct
        .page(params[:page]).per(15)
    end

    def show
        @patient = Patient.find(params[:id]) 
        @appointments = @patient.appointments
    end

    def search
        @doctor = current_doctor
        @patient = @doctor.patients.order("id")
        @patients = @patient.search(params[:q],params[:sex])
        .page(params[:page]).per(15)
        # ページネーションbudleがないと動かない

        render "doctor/patients/index"
    end
end
