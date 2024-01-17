class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :username, null: false            # ユーザー名
      t.references :department, null: false      # 外部キー/診察科
      t.string :number, null: false              # 電話番号
      t.string :email                            # メールアドレス
      t.string :password_digest                  # パスワード
      t.integer :sex, null: false, default: 0    # 性別 (1:男, 2:女)

      t.timestamps
    end
  end
end
