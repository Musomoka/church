class Sermon < ActiveRecord::Base
 has_attached_file :media,  default_url: "/media/:style/missing.png"
 validates_attachment_content_type :media, :content_type => ['audio/mpeg']

 has_many :comments, as: :commentable
 belongs_to :users

 default_scope -> { order( created_at: :desc) }
end
