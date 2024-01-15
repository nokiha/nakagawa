class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.references :doctor, null: false      # 外部キー/医者
      t.references :appointment   # 外部キー/予約id
      t.datetime :time ,null: false  # 予約枠の時間

      t.timestamps
    end
  end
end
