class ApplicationController < ActionController::Base
    # ユーザごとの区別を行うメソッド
    private def current_patient
        Patient.find_by(id: session[:patient_id]) if session[:patient_id]
    end
    helper_method :current_patient

    private def current_doctor
        Doctor.find_by(id: session[:doctor_id]) if session[:doctor_id]
    end
    helper_method :current_doctor

    private def current_reception
        Reception.find_by(id: session[:reception_id]) if session[:reception_id]
    end
    helper_method :current_reception

    private def current_administrator
        Administrator.find_by(id: session[:administrator_id]) if session[:administrator_id]
    end
    helper_method :current_administrator

    # 操作が行われた場合にsessionを更新
    private def update_admin_time 
        session[:admin_id] = { value: session[:admin_id], expires: 18000.second.from_now
        } if session[:admin_id]
    end

    private def update_patient_time 
        session[:patient_id] = { value: session[:patient_id], expires: 18000.second.from_now
        } if session[:patient_id]
    end

    private def update_doctor_time 
        session[:doctor_id] = { value: session[:doctor_id], expires: 18000.second.from_now
        } if session[:doctor_id]
    end

    private def update_reception_time 
        session[:reception_id] = { value: session[:reception_id], expires: 18000.second.from_now
        } if session[:reception_id]
    end

    #　エラー処理
    class LoginRequired < StandardError; end
    class Forbidden < StandardError; end

    if Rails.env.production? || ENV["RESCUE_EXCEPTIONS"]
      rescue_from StandardError, with: :rescue_internal_server_error
      rescue_from ActiveRecord::RecordNotFound, with: :rescue_not_found
      rescue_from ActionController::ParameterMissing, with: :rescue_bad_request
    end
  
    rescue_from LoginRequired, with: :rescue_login_required
    rescue_from Forbidden, with: :rescue_forbidden
      #コントローラで起きたエラーの対処

      # 未ログイン時エラー
    private def login_required
        raise LoginRequired unless current_member
    end

    private def rescue_bad_request(exception)
        render "errors/bad_request", status: 400, layout: "error",
          formats: [:html]
    end
    
      private def rescue_login_required(exception)
        render "errors/login_required", status: 403, layout: "error",
          formats: [:html]
      end
    
      private def rescue_forbidden(exception)
        render "errors/forbidden", status: 403, layout: "error",
          formats: [:html]
      end
    
      private def rescue_not_found(exception)
        render "errors/not_found", status: 404, layout: "error",
          formats: [:html]
      end
    
      private def rescue_internal_server_error(exception)
        render "errors/internal_server_error", status: 500, layout: "error",
          formats: [:html]
      end

end
