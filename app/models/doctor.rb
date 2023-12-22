class Doctor < ApplicationRecord
    belongs_to :department # 医者との関連付け
    has_secure_password  # パスワードの属性
end
