class Doctor::Base < ApplicationController
  # 名前空間の処理はsessions以外はアクセスできない
  before_action :doctor_login_required

  private def current_doctor
        Doctor.find_by(id: session[:doctor_id]) if session[:doctor_id]
    end
    helper_method :current_doctor
  

  private def doctor_login_required
    raise Forbidden unless current_doctor
  end
end
