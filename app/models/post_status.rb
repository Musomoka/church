class PostStatus < ApplicationRecord
attr_accessor :status_name


belongs_to :sermon


def status_types(var)

  args = %w(draft review publish trash)

  
end 



end