class AddAttachmentPictureToPeople < ActiveRecord::Migration
  def self.up
    change_table :people do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :people, :picture
  end
end
