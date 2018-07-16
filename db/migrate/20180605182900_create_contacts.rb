class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :location
      t.string :company_email
      t.string :string
      t.string :website

      t.timestamps
    end
  end
end
