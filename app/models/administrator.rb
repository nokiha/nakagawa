class Administrator < ApplicationRecord
    has_secure_password  # パスワードの安全性

end
