class Sermon < ActiveRecord::Base
has_attached_file :media,  default_url: "/media/:style/missing.png"
 validates_attachment_content_type :media, :content_type => ['audio/mpeg']
end
