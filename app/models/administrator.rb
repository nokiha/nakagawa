class Administrator < ApplicationRecord
    has_secure_password  # パスワードのバリデーション

end
