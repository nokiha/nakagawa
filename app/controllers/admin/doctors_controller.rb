class Admin::DoctorsController < Admin::Base
    def index
        
    end

    def new
        @doctor = Doctor.new()
    end
    
    def create
        @doctor = Doctor.new(params[:doctor])
        if @doctor.save
            redirect_to :root, notice: "会員登録が完了しました。"
        else
            render "admin/doctors/new"
        end
    end

    def show
        @doctor = current_doctor
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
