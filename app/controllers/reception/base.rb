class Reception::Base < ApplicationController
  # 名前空間の処理はsessions以外はアクセスできない
  before_action :reception_login_required
  before_action :update_reception_time 

  private def reception_login_required
    raise Forbidden unless current_reception
  end
end
