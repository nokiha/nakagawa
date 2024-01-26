class Admin::AppointmentsController < Admin::Base
    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to :patient_root, notice: "該当の予約をキャンセルしました。"
    end

end
