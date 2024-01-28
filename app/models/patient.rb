class Patient < ApplicationRecord
    has_secure_password  # パスワードの安全性
    has_many :appointments, dependent: :destroy
    has_many :checks, through: :appointments


    validates :username, presence: true, length: { maximum: 20, minimum: 2 }
  validates :password, presence: true, length: { minimum: 8 }, format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :number, presence: true, length: { maximum: 11 }, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }



    class << self
        def search(query, sex)
          rel = order("id")
          # テキストボックスでの検索
          if query.present?
            rel = rel.where("username LIKE ?","%#{query}%")
          end
          # ラジオボタンでの検索
          if (sex != "0")
            rel = rel.where(sex: sex)
          end
          rel
        end
      end
end
