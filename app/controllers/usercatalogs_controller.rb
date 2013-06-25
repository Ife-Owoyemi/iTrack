class UsercatalogsController < ApplicationController
  respond_to :html, :json
  before_filter :signed_in_user, only: [:create, :destroy, :update]
  before_filter :correct_user,   only: :destroy
  def index
    @usercourses = current_user.usercatalogs.all
  end

  def create
  	@usercatalog = current_user.usercatalogs.build(params[:usercatalog])
    @usercourses = current_user.usercatalogs.all
  	if @usercatalog.save
  		flash[:success] = "Course Added!"
  		redirect_to root_url
  	else
  		render 'static_pages/home'
  	end
  end

  def update
    respond_to do |format|
      if current_user.update_attributes(params[:user])
        format.html { redirect_to(current_user, :notice => 'User was successfully updated.') }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => current_user.errors.full_messages, :status => :unprocessable_entity }
      end
    end
    #@usercatalogs =  current_user.usercatalogs.find(params[:id])
    #@usercatalogs.update_attributes(params[:usercatalog])
    #respond_with @usercatalogs
  end

  def edit

  end

  def destroy
    @usercourses = current_user.usercatalogs.all
    @usercatalog.destroy
    redirect_to root_url
  end

  private
    def correct_user
      @usercourses = current_user.usercatalogs.all
      @usercatalog = current_user.usercatalogs.find_by_id(params[:id])
      redirect_to root_url if @usercatalog.nil?
    end
end