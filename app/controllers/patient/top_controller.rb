class Patient::TopController < Patient::Base
    def login
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
