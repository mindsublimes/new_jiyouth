class CreateLocalGovernmentStructures < ActiveRecord::Migration[6.1]
  def change
    create_table :local_government_structures do |t|
      t.references :district
      t.string :title
      t.integer :area
      t.timestamps
    end
  end
end
