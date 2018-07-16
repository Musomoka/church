class AddUserReferenceColumnToSermon < ActiveRecord::Migration[5.2]
  def change
    add_reference :sermons, :user, foreign_key: true
  end
end
