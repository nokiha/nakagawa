class Doctor::ChecksController < Doctor::Base
    def index
        @doctor = current_doctor
        @checks = @doctor.checks.order("id")
    end

    def destroy
        @check = Check.find(params[:id])
        @check.destroy
        redirect_to :doctor_checks, notice: "診察を終了しました。"
    end
end
