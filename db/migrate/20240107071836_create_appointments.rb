class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false      # 外部キー/患者
      t.references :slot, null: false      # 外部キー/スロット
      t.time :time, null: false         # 予約枠の時間

      t.timestamps
    end
  end
end