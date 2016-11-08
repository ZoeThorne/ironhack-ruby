class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
