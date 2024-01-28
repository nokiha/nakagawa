class Appointment < ApplicationRecord
    belongs_to :slot # スロットには予約が規定数まで入る
    belongs_to :patient
    has_one :check, dependent: :destroy # 予約済みのもののみ受付される

    #scope :without_check, -> { left_outer_joins(:check).where(checks: { appointment_id: nil }) }

    validate :one_appointment_per_day_per_patient

    #　患者は1日予約を一件まで
    private def one_appointment_per_day_per_patient
        if self.patient.appointments.where("DATE(time) = ?", self.time.to_date).exists?
            errors.add(:base, "Each patient can have only one appointment per day")
        end
    end

end
