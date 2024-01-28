class Reception::AppointmentsController < Reception::Base
    def index
        @appointments = Appointment
        .where("date(time) = ?", Date.today)
        .without_check
        .order("id")
    end
    

end
