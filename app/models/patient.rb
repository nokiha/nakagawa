class Patient < ApplicationRecord
    has_secure_password  # パスワードの安全性
    has_many :appointments, dependent: :destroy



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
