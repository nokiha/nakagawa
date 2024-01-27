class Patient::Base < ApplicationController
  # 名前空間の処理はsessions以外はアクセスできない
  before_action :patient_login_required

  private def current_patient
    Patient.find_by(id: session[:patient_id]) if session[:patient_id]
  end
  helper_method :current_patient


  private def patient_login_required
    raise Forbidden unless current_patient
  end
end
