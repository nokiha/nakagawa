class Admin::PatientsController < Admin::Base
    def index
        @patients = Patient.order("id")
        .page(params[:page]).per(15)
    end

    def search
        @patients = Patient.search(params[:q],params[:sex])
        .page(params[:page]).per(15)
        # ページネーションbudleがないと動かない

        render "admin/patients/index"
    end

    def show
        @patient = Patient.find(params[:id]) 
        @appointments = @patient.appointments
    end

    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
        redirect_to [:admin, @patient],  notice: "患者を削除しました。"
    end
    
end
