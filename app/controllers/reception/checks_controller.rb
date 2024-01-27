class Reception::ChecksController < Reception::Base
    def index
    end

    def confirm
        @appointment_id = Appointment.find_by(id: params[:appointment_id])
        @check = Check.new(
            appointment_id: @appointment_id
            
            )
        session[:check] = @check.attributes
    end

    def create
        @check = Appointment.new(session[:check])
        if @check.save
            redirect_to :reception_root, notice: "予約が完了しました"
        else
            render reception_doctor_slots_path(doctor_id: doctor.id)
        end
        
        #redirect_to @reception, notice: "予約が完了しました"
    end


end
