class Patient::AccountsController < ApplicationController
  # ログインしていない場合newとcreateのみ行える
  before_action :login_required

  def show
    @patient = current_patient
  end

  def edit
    @patient = current_patient
  end

  def update
    @patient = current_patient
    @patient.assign_attributes(params[:account])
        if @patient.save
            redirect_to :root, notice: "登録情報を更新しました。"
        else
            render ""
        end
  end

end
