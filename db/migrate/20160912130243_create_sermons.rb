class CreateSermons < ActiveRecord::Migration[4.2]
  def change
    create_table :sermons do |t|
      t.string :title
      t.text :scriptures
      t.text :body

      t.timestamps null: false
    end
  end
end
