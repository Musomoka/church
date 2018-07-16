class AddAvatarToUpcoming < ActiveRecord::Migration[5.2]
  def change
    add_column :upcomings, :avatar, :string
  end
end
