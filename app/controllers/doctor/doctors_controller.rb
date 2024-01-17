class Doctor::DoctorsController < Doctor::Base
    def index
        @time = DateTime.new(2024,01,12,9,0,0,"+00:00")
        @doctor_id = current_doctor.id
        @slots = Slot.where(doctor_id: @doctor_id)
    end

    def new
    end
    
    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
