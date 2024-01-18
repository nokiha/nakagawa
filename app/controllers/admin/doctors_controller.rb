class Admin::DoctorsController < Admin::Base
    def index
        @doctors = Doctor.order("id")
        .page(params[:page]).per(15)
        
    end

    def new
        @doctor = Doctor.new()
    end
    
    def create
        @doctor = Doctor.new(params[:doctor])
        if @doctor.save
            redirect_to :admin_root, notice: "医者の登録が完了しました。"
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
