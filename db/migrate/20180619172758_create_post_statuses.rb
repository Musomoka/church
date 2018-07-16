class CreatePostStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :post_statuses do |t|
      t.string :status_name, :default => 'Review'
      t.references :sermon, foreign_key: true
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
