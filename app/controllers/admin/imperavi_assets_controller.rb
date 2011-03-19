class Admin::ImperaviAssetsController < Admin::BaseController
  resource_controller
  protect_from_forgery :except => :create
# layout false, :only => :show 
  
  new_action.wants.html do
    @file_styles = ImperaviAsset.file_styles
    render :template => "admin/imperavi_assets/new", :layout => false
  end
  
  create do
#    after do
#      @imperavi_asset.file = params[:file]
#      @imperavi_asset.save
#    end
    wants.html do
      render :template => "admin/imperavi_assets/show_naked", :layout => false
    end
  end

#private
#  def collection
#   @collection ||= end_of_association_chain.find(:all, :page => {:size => 10, :current => params[:page]})
#  end
end
