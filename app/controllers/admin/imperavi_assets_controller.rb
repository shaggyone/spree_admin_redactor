class Admin::ImperaviAssetsController < Admin::BaseController
  resource_controller
  protect_from_forgery :except => :create
# layout false, :only => :show 
 

  new_action do
    before do
      @imperavi_assets = ImperaviAsset.paginate(:all, :per_page => 24, :page => params[:page]) 
    end

    wants.html do
      render :template => "admin/imperavi_assets/new", :layout => false
    end
  end
  
  create do
    wants.html do
      render :template => "admin/imperavi_assets/show_naked", :layout => false
    end
  end

  def paginate
    @imperavi_assets = ImperaviAsset.paginate(:all, :per_page => 3, :page => params[:page])
    render :layout => false
  end

  before_filter do
    @file_styles = ImperaviAsset.file_styles
  end

private
  def collection
    @collection ||= ImperaviAsset.paginate(:all, :per_page => 50, :page => params[:page])  
#   @collection ||= end_of_association_chain.find(:all, :page => {:size => 10, :current => params[:page]})
  end
end
