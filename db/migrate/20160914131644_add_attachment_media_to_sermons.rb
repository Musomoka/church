class AddAttachmentMediaToSermons < ActiveRecord::Migration[4.2]
  def self.up
    change_table :sermons do |t|
      t.attachment :media
    end
  end

  def self.down
    remove_attachment :sermons, :media
  end
end
