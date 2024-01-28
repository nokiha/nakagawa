class Appointment < ApplicationRecord
    belongs_to :slot # スロットには予約が規定数まで入る
    belongs_to :patient
    has_one :check # 予約済みのもののみ受付される
    
end
