class Patient < ApplicationRecord
    has_secure_password  # パスワードの安全性
    has_many :appointments
end
