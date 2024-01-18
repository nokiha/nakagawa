class Admin::DoctorsController < Admin::Base
    def index
        @doctors = Doctor.order("id")
        .page(params[:page]).per(15) 
    end

    def search
        @doctors = Doctor.search(params[:q],params[:sex])
        .page(params[:page]).per(15)
        # ページネーションbudleがないと動かない

        render "admin/doctors/index"
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
        @doctor = Doctor.find(params[:id])
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        @doctor = Doctor.find(params[:id])
        @doctorr.assign_attributes(params[:doctor])
        if @doctor.save
            redirect_to [:admin, @doctor], notice: "医者の情報を更新しました。"
        else
            render "admin/doctor/edit"
        end
    end

    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        redirect_to [:admin, @doctor],  notice: "医者を削除しました。"
    end
end
