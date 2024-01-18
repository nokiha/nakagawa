class Admin::Base < ApplicationController
  # 名前空間の処理はsessions以外はアクセスできない
  before_action :admin_login_required
  before_action :update_admin_time


  
  private def admin_login_required
    raise Forbidden unless current_administrator
  end
end
