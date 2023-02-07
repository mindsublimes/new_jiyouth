class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.references :punjab_local_government
      t.integer :unit_name
      t.timestamps
    end
  end
end
