class Reception::ChecksController < Reception::Base
    def index
        @checks = Check.order("id")
    end

    def confirm
        @appointment = Appointment.find_by(id: params[:appointment_id])
        @check = Check.new(
            appointment_id: @appointment.id
            
            )
        session[:check] = @check.attributes
    end

    def create
        @check = Check.new(session[:check])
        if @check.save
            redirect_to :reception_root, notice: "予約が完了しました"
        else
            render reception_doctor_slots_path(doctor_id: doctor.id)
        end
    end
end
