class CreateResponsibilitySessions < ActiveRecord::Migration[6.1]
  def change
    create_table :responsibility_sessions do |t|
      t.references :team_member
      t.references :responsibility
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
