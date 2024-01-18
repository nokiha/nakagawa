class Slot < ApplicationRecord
    has_one :appointment # スロットには多数の予約が入る
    belongs_to :doctor # 医者はスロットを多数もつ
end
