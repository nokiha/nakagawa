class CreateAdministrators < ActiveRecord::Migration[7.0]
  def change
    create_table :administrators do |t|
      t.string :username, null: false            # ユーザー名
      t.string :password_digest                  # パスワード
      
      t.timestamps
    end
  end
end
