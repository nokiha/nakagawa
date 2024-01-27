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
            render reception_appointments
        end
        
        #redirect_to @patient, notice: "予約が完了しました"
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to :patient_root, notice: "予約をキャンセルしました。"
    end

end
