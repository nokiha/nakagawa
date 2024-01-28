class Doctor < ApplicationRecord
    belongs_to :department # 医者との関連付け
    has_secure_password  # パスワードの安全性
    has_many :slots, dependent: :destroy# 医者は予約枠のスロットを複数持てる
    has_many :appointments, through: :slots
    has_many :patients, through: :appointments
    has_many :checks, through: :appointments

    class << self
      def search(query, department)
        rel = order("id")
        # テキストボックスでの検索
        if query.present?
          rel = rel.where("username LIKE ?","%#{query}%")
        end
        # ラジオボタンでの検索
        if (department != "0")
          rel = rel.where(department: department)
        end
        rel
      end
    end
end
