class Reception::TopController < Reception::Base
    def login
    end

    def index
        @appointments = Appointment.order("id")
    end

    def bad_request
        raise ActionController::ParameterMissing, ""
    end
    
    def forbidden
        raise Forbidden, ""
    end
    
    def internal_server_error
        raise
    end
end
