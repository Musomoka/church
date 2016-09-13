class CreateSermons < ActiveRecord::Migration
  def change
    create_table :sermons do |t|
      t.string :title
      t.text :scriptures
      t.text :body

      t.timestamps null: false
    end
  end
end
