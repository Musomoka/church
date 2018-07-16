class AddColumnsToUpcomings < ActiveRecord::Migration[5.2]
  def change
    add_column :upcomings, :facebook, :string
    add_column :upcomings, :twitter, :string
    add_column :upcomings, :google, :string
  end
end
