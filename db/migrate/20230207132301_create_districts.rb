class CreateDistricts < ActiveRecord::Migration[6.1]
  def change
    create_table :districts do |t|
      t.references :province
      t.string :title
      t.timestamps
    end
  end
end
