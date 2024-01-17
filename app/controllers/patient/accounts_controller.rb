class Patient::AccountsController < ApplicationController
  # ログインしていない場合newとcreateのみ行える
  before_action :login_required

  def show
  end

  def edit
  end

  def update
  end

end
