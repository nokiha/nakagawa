class PatientsController < ApplicationController
    def new
        @patient = Patient.new(birthday: Date.new(2003, 4, 5))
    end
    
    def create
        @patient = Patient.new(params[:patient])
        if @patient.save
            redirect_to :root, notice: "会員登録が完了しました。"
        else
            render "patients/new"
        end
    end
end
