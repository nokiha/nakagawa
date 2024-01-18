class Appointment < ApplicationRecord
    belongs_to :slot # スロットには予約が規定数まで入る
    belongs_to :patient
    belongs_to :check, optional: true # 予約済みのもののみ受付される
    
end
