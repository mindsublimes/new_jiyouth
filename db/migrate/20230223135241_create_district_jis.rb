class CreateDistrictJis < ActiveRecord::Migration[6.1]
  def change
    create_table :district_jis do |t|
      t.references :province_ji
      t.string :title
      t.timestamps
    end
  end
end
