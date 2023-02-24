class CreateCandidateJis < ActiveRecord::Migration[6.1]
  def change
    create_table :candidate_jis do |t|
      t.references :assembly_ji
      t.string :name
      t.string :city
      t.timestamps
    end
  end
end
