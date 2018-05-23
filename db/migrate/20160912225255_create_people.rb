class CreatePeople < ActiveRecord::Migration[4.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
