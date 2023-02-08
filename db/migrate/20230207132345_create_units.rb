class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.references :local_government_structure
      t.integer :unit_name
      t.string :title
      t.timestamps
    end
  end
end
