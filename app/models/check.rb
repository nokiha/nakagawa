class Check < ApplicationRecord
    has_one :appointments # 受付済みの予約が複数はいる
end
