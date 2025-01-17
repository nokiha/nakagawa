class Patient::AppointmentsController < Patient::Base
    def confirm
        @patient_id = current_patient.id
        @slot = Slot.find_by(id: params[:slot_id])
        @appointment = Appointment.new(
            patient_id: @patient_id, 
            slot_id: @slot.id, 
            time: @slot.time
            )
        session[:appointment] = @appointment.attributes
    end

    def create
        @appointment = Appointment.new(session[:appointment])
        if @appointment.save
            redirect_to :patient_root, notice: "予約が完了しました"
        else
            redirect_to :patient_root, notice: "予約がいっぱいです！！"
        end
        
        #redirect_to @patient, notice: "予約が完了しました"
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        if @appointment.destroy
            redirect_to :patient_root, notice: "予約をキャンセルしました。"
        else
            redirect_to :patient_root, notice: "受付済みの予約はキャンセルできません！！"
        end
    end

end
