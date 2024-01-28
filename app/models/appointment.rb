class Appointment < ApplicationRecord
    belongs_to :slot # スロットには予約が規定数まで入る
    belongs_to :patient
    has_one :check, dependent: :destroy # 予約済みのもののみ受付される

    scope :without_check, -> { left_outer_joins(:check).where(checks: { appointment_id: nil }) }

    #　患者は1日予約を一件まで
    validates :patient_id, uniqueness: { scope: :time }

end
