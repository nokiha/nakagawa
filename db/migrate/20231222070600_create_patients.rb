class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :username, null: false            # ユーザー名
      t.string :password_digest                  # パスワード
      t.date :birthday                           # 生年月日
      t.string :email                            # メールアドレス
      t.string :number, null: false              # 電話番号
      t.integer :sex, null: false, default: 0    # 性別 (1:男, 2:女)

      t.timestamps
    end
  end
end
