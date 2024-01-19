class Patient::SlotsController < ApplicationController
    def index
        @time = DateTime.new(2024,01,12,9,0,0,"+00:00")
        @doctor = Doctor.find_by(id: params[:doctor_id])
        @slots = @doctor.slots
        #.page(params[:page]).per(15)
    end

    def show
    end

    def new
    end

    def create
    end

    def make
        @slot = Slot.find(params[:id])
        current_patient.made_slots << @slot
        @patient = current_patient
        
        redirect_to @patient, notice: "予約が完了しました"
    end
end
