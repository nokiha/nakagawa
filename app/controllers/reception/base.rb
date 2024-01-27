class Reception::Base < ApplicationController
  # 名前空間の処理はsessions以外はアクセスできない
  before_action :reception_login_required
  before_action :update_reception_time 

  private def current_reception
    Reception.find_by(id: session[:reception_id]) if session[:reception_id]
  end
  helper_method :current_reception

  private def reception_login_required
    raise Forbidden unless current_reception
  end
end
