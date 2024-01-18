class Check < ApplicationRecord
    has_one :appointment # 受付済みの予約が複数はいる
end
