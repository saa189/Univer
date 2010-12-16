class ReportingsController < ApplicationController
  # GET /reportings
  # GET /reportings.xml
  def index
    @group = Group.find(params[:group_id])
    @reportings = @group.reportings
  end

  # GET /reportings/1
  # GET /reportings/1.xml
  def show
    @group = Group.find(params[:group_id])
    @reporting = @group.reportings.find(params[:id])
  end

  # GET /reportings/new
  # GET /reportings/new.xml
  def new
    @group = Group.find(params[:group_id])
    @reporting = @group.reportings.build
  end

  # GET /reportings/1/edit
  def edit
    @group = Group.find(params[:group_id])
    @reporting = @group.reportings.find(params[:id])

    
  end

  # POST /reportings
  # POST /reportings.xml
  def create
    @group = Group.find(params[:group_id])
    @reporting = @group.reportings.build(params[:reporting])

      if @reporting.save
        redirect_to group_reporting_url(@group, @reporting)
    else
      render :action => "new" 
      end

  end

  # PUT /reportings/1
  # PUT /reportings/1.xml
  def update
    @group = Group.find(params[:group_id])
    @reporting = Reporting.find(params[:id])
     if @reporting.update_attributes(params[:reporting])
        redirect_to group_reporting_url(@group, @reporting)
     else
        render :action => "edit"
     end
  end

  # DELETE /reportings/1
  # DELETE /reportings/1.xml
  def destroy
    @group = Group.find(params[:group_id])
    @reporting = Reporting.find(params[:id])
    @reporting.destroy

    respond_to do |format|
      format.html { redirect_to group_reportings_path(@group)  }
      format.xml  { head :ok }
    end
 end
end
