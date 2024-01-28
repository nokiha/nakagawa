class Check < ApplicationRecord
    belongs_to :appointment # 受付済みの予約が複数はいる
end
