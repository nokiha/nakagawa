class Patient::DepartmentsController < Patient::Base
    # 診療科の選択のみに使う
    def index
        @departments = Department.order("id")
    end

    def show
        @department = Department.find(params[:id])
        @doctors = @department.doctors
    end
end
