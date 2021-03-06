class AssetsController < ApplicationController
  before_filter :login_required#, :except => %w[ index show ]

  def index
    @assets = current_user.assets 
# @assets_search = current_user.assets.name_like_all(params[:search].to_s.split).ascend_by_name if params[:search]

    if @assets
      @assets_search = @assets.name_like_all(params[:search].to_s.split).ascend_by_name.paginate(:page => params[:page], :per_page => 8, :order => 'name') 
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assets }
    end
  end

  def show
    # @asset = Asset.find(params[:id])
    @asset = current_user.assets.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asset }
    end
  end

  def new
    @asset = Asset.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asset }
    end
  end

  def edit
    # @asset = Asset.find(params[:id])
    @asset = current_user.assets.find(params[:id])
  end

  def create
    @asset = current_user.assets.new(params[:asset])

    respond_to do |format|
      if @asset.save
        flash[:notice] = 'Asset was successfully created.'
        format.html { redirect_to(@asset) }
        format.xml  { render :xml => @asset, :status => :created, :location => @asset }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @asset = current_user.assets.find(params[:id])
    # @asset = Asset.find(params[:id])

    respond_to do |format|
      if @asset.update_attributes(params[:asset])
        flash[:notice] = 'Asset was successfully updated.'
        format.html { redirect_to(@asset) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    # @asset = Asset.find(params[:id])
    @asset = current_user.assets.find(params[:id])
    @asset.destroy

    respond_to do |format|
      format.html { redirect_to(assets_url) }
      format.xml  { head :ok }
    end
  end
end
