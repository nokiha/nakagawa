class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :name, null: false            # 診療科名

      t.timestamps
    end
  end
end
