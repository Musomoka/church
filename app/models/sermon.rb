class Sermon < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :post_statuses
  accepts_nested_attributes_for :post_statuses
  mount_uploader :avatar, AvatarUploader
  validates :title,  :uniqueness => true
  validates_presence_of :user, :avatar

  default_scope -> { order( created_at: :desc) }
  
  scope :descending, -> { order( created_at: :desc) }
  
  scope :published, -> { where status: 'published' }
  scope :editing, -> {where status: 'editing'}
  scope :review, -> { where status: 'review'}
  scope :review, -> {where status: 'feature'}

  

 
end
