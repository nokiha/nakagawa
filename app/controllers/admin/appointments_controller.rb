class Admin::AppointmentsController < Admin::Base
    def destroy
        @appointment = Appointment.find(params[:id])
        if @appointment.destroy
            redirect_back(fallback_location: root_path), notice: "予約を削除しました。"
        else
            redirect_to :admin_root, notice: "受付済みの予約は削除できません！！"
        end
    end

end
