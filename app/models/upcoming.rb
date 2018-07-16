class Upcoming < ActiveRecord::Base

    has_many :comments, as: :commentable
    mount_uploader :avatar, AvatarUploader
end
