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
            render patient_doctor_slots_path(doctor_id: doctor.id)
        end
        
        #redirect_to @patient, notice: "予約が完了しました"
    end

end