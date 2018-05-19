class AddCreatedAtReferenceToSermon < ActiveRecord::Migration[5.2]
  def change
    add_index :sermons, :created_at
  end
end
