class AddStatusColumnToSermon < ActiveRecord::Migration[5.0]
  def change
    add_column :sermons, :status, :string
  end
end
