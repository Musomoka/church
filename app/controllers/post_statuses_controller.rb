class PostStatusesController < InheritedResources::Base
before_action :set_post_status, only: [:show]
before_action :set_sermon
  def new
    @post_status = @sermon.post_statuses.build
    
  end

  private

  
    def set_post_status
      @post_status = PostStatus.find(params[:id])
    end

    def set_sermon
      
      @sermon = Sermon.find(params[:sermon_id])
    end

    def post_status_params
      params.require(:post_status).permit(:post_state, :sermon_id)
    end
end

