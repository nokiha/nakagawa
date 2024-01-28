class Doctor::AppointmentsController < Doctor::Base
    def destroy
        @appointment = Appointment.find(params[:id])
        if @appointment.destroy
            redirect_to :doctor_root, notice: "予約を削除しました。"
        else
            redirect_to :patient_root, notice: "受付済みの予約は削除できません！！"
        end
    end

end
