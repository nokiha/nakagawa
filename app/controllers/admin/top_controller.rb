class Admin::TopController < Admin::Base
    def index
    end

    def doctor
       @doctors = Doctor.order("id")
       .page(params[:page]).per(15) 
    end

    def slots
        @time = DateTime.new(2024,01,12,9,0,0,"+00:00")
        @doctor = Doctor.find_by(id: params[:doctor_id])
        @slots = @doctor.slots
        .page(params[:page]).per(35) 
    end

    def search
        @doctors = Doctor.search(params[:q],params[:department])
        .page(params[:page]).per(15)
        # ページネーションbudleがないと動かない

        render "admin/doctors/index"
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
