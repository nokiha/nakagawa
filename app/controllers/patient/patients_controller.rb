class Patient::PatientsController < Patient::Base
    def index
        @patient = current_patient
        @appointments = @patient.appointments

        @checks = @patient.checks
    end
    
    def create
    end

    def show
        @patient = current_patient
        @appointments = @patient.appointments
    end

    def edit
        @patient = current_patient
    end

    def update
        @patient = Patient.find(params[:id])
        @patient.assign_attributes(params[:patient])
        if @patient.save
            redirect_to [:patient, @patient], notice: "登録情報を更新しました。"
        else
            render "patient/patients/edit"
        end
    end
end
