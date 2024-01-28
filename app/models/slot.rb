class Slot < ApplicationRecord
    has_one :appointment, dependent: :destroy # スロットには多数の予約が入る
    belongs_to :doctor # 医者はスロットを多数もつ

    scope :from_today, -> { where('time >= ?', Date.today) }

    validates :doctor_id, uniqueness: { scope: :time }

    class << self
        def search(query)
          rel = order("number")
          # テキストボックスでの検索
          if query.present?
            rel = rel.where("name LIKE ? OR full_name LIKE ?",
              "%#{query}%", "%#{query}%")
          end
          # ラジオボタンでの検索
          if (gender != "0")
            rel = rel.where(gender: gender)
          end
          rel
        end
      end
end
