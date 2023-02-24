class CreateProvinceJis < ActiveRecord::Migration[6.1]
  def change
    create_table :province_jis do |t|
      t.string :title
      t.timestamps
    end
  end
end
