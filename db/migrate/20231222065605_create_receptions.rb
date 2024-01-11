class CreateReceptions < ActiveRecord::Migration[7.0]
  def change
    create_table :receptions do |t|
      t.string :username, null: false            # ユーザー名
      t.string :usertype, null: false            # ユーザー区分
      t.string :password_digest                  # パスワード

      t.timestamps
    end
  end
end
