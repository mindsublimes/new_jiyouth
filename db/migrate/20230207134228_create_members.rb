class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.references :area, polymorphic: true
      t.string :name
      t.string :father_name
      t.string :email
      t.string :phone
      t.string :cnic
      t.timestamps
    end
  end
end
