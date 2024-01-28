class Patient::SlotsController < ApplicationController
    def index
        @time = DateTime.new(2024,01,12,9,0,0,"+00:00")
        @doctor = Doctor.find_by(id: params[:doctor_id])
        @slots = @doctor.slots.from_today.order("time")
        #.page(params[:page]).per(15)
    end

    def show
    end

    def new
    end

    def create
    end
end
