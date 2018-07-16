class Comment < ApplicationRecord
 
  belongs_to :sermon, polymorphic: true, dependent: :destroy

  
  validates :body, presence: true
  paginates_per 3

end
