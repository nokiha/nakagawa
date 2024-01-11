class Doctor < ApplicationRecord
    belongs_to :department # 医者との関連付け
    has_secure_password  # パスワードの安全性
    has_many :slot # 医者は予約枠のスロットを複数持てる
end
