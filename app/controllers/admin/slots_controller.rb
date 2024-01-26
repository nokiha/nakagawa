class Admin::SlotsController < ApplicationController
    def index
        @time = DateTime.new(2024,01,12,9,0,0,"+00:00")
        @doctor = Doctor.find_by(id: params[:doctor_id])
        @slots = @doctor.slots
        #.page(params[:page]).per(15)
    end

    def show
    end

    def new
        @slot = Slot.new()
    end

    def create
        @slot = Slot.new(params[:slot])
        if @slot.save
            redirect_to :admin_root, notice: "予約枠を増やしました。"
        else
            render "new"
        end
    end
end
