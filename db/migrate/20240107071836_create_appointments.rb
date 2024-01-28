class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false      # 外部キー/患者
      t.references :slot, null: false      # 外部キー/スロット
      t.datetime :time ,null: false  # 予約枠の時間
      t.references :check      # 外部キー/受付

      t.timestamps
    end
    add_index :appointments, [:patient_id, :time], unique: true
  end
end
