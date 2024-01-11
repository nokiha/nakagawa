class Patient < ApplicationRecord
    has_secure_password  # パスワードの安全性
    # belongs_to :appointment
end
