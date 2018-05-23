class CreateUpcomings < ActiveRecord::Migration[4.2]
  def change
    create_table :upcomings do |t|
      t.string :title
      t.text :description
      t.string :start
      t.string :end

      t.timestamps null: false
    end
  end
end
