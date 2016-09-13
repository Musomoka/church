class CreateUpcomings < ActiveRecord::Migration
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
