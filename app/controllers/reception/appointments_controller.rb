class Reception::AppointmentsController < Reception::Base
    def index
        @appointments = Appointment.order("id")
    end
    

end
