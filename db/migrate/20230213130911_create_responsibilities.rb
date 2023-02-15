class CreateResponsibilities < ActiveRecord::Migration[6.1]
  def change
    create_table :responsibilities do |t|
      t.string :title
      t.timestamps
    end
  end
end
