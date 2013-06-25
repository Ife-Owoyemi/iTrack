class StaticPagesController < ApplicationController
  respond_to :html, :json
  def home
  	if signed_in?
      @micropost = current_user.microposts.build
      @usercourses = current_user.usercatalogs.all
      @usercatalog = current_user.usercatalogs.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def help
  end

  def about
  end
  
end
