class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
