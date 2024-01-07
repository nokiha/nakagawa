class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks do |t|
      t.references :appointment, null: false      # 外部キー/予約

      t.timestamps
    end
  end
end
