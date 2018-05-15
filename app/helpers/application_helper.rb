module ApplicationHelper

    def comments_paginated
        @commentable.comments.paginate(:page => params[:page], :per_page => 5)
    end

end
