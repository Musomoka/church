class AddAvatarToSermon < ActiveRecord::Migration[5.2]
  def change
    add_column :sermons, :avatar, :string
  end
end
