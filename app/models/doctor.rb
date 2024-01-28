class Doctor < ApplicationRecord
    belongs_to :department # 医者との関連付け
    has_secure_password  # パスワードの安全性
    has_many :slots, dependent: :destroy# 医者は予約枠のスロットを複数持てる
    has_many :appointments, through: :slots
    has_many :patients, through: :appointments
    has_many :checks, through: :appointments


    validates :username, length: { maximum: 20, minimum: 2 }
  validates :password, presence: true, length: { maximum: 8 }, format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :number, presence: true, length: { maximum: 11 }, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :sex, inclusion: { in: [1, 2] }


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
