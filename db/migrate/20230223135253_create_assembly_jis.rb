class CreateAssemblyJis < ActiveRecord::Migration[6.1]
  def change
    create_table :assembly_jis do |t|
      t.references :district_ji
      t.string :title
      t.integer :constituencies
      t.timestamps
    end
  end
end
