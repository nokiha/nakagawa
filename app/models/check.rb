class Check < ApplicationRecord
    has_one :appointment, dependent: :nullify # 受付済みの予約が複数はいる
end
