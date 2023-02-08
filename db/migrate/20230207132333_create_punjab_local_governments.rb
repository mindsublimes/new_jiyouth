class CreatePunjabLocalGovernments < ActiveRecord::Migration[6.1]
  def change
    create_table :punjab_local_governments do |t|
      t.references :district
      t.string :title
      t.integer :area
      t.timestamps
    end
  end
end
