class Admin::SlotsController < ApplicationController
    def index
        @time = DateTime.new(2024,01,12,9,0,0,"+00:00")
        @doctor = Doctor.find_by(id: params[:doctor_id])
        @slots = @doctor.slots.order("time")
        #.page(params[:page]).per(15)
    end

    def show
    end

    def new
        @slot = Slot.new()
    end

    def create
        @slot = Slot.new(params[:slot])
        @doctor = @slot.doctor
        if @slot.save
            redirect_to "/admin/doctor/#{@doctor.id}/slots", notice: "予約枠を増やしました。"
        else
            render "new"
        end
    end

    def destroy
        @slot = Slot.find(params[:id])
        @doctor = @slot.doctor
        if @slot.destroy
            redirect_to "/admin/doctor/#{@doctor.id}/slots", notice: "予約枠を削除しました。"
        else
            redirect_to "/admin/doctor/#{@doctor.id}/slots", notice: "予約があるため、予約枠を削除できませんでした"
        end
    end

    private def slot_params
        params.require(:slot).permit(:doctor_id, :date, :hour)
    end
end
