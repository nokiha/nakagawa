class Appointment < ApplicationRecord
    belongs_to :slot # スロットには予約が規定数まで入る
    belongs_to :patient
    has_one :check, dependent: :destroy # 予約済みのもののみ受付される

    scope :without_check, -> { left_outer_joins(:check).where(checks: { appointment_id: nil }) }

    validate :one_appointment_per_day_per_patient
    validates_uniqueness_of :slot_id

    before_destroy :check_if_check_exists

    #　患者は1日予約を一件まで
    private def one_appointment_per_day_per_patient
        if self.patient.appointments.where("DATE(time) = ?", self.time.to_date).exists?
            errors.add(:base, "Each patient can have only one appointment per day")
        end
    end

    # 受付済みの予約はキャンセルできない
    private def check_if_check_exists
      if check.present?
        errors.add(:base, "Cannot delete appointment with associated check")
        throw(:abort)
      end
    end

end
