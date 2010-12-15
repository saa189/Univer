class ReportingsController < ApplicationController
  # GET /reportings
  # GET /reportings.xml
  def index
    @discipline = Discipline.find(params[:discipline_id])
    @reportings = @discipline.reportings
  end

  # GET /reportings/1
  # GET /reportings/1.xml
  def show
    @discipline = Discipline.find(params[:discipline_id])
    @reporting = @discipline.reportings.find(params[:id])
  end

  # GET /reportings/new
  # GET /reportings/new.xml
  def new
    @discipline = Discipline.find(params[:discipline_id])
    @reporting = @discipline.reportings.build
  end

  # GET /reportings/1/edit
  def edit
    @discipline = Discipline.find(params[:discipline_id])
    @reporting = @discipline.reportings.find(params[:id])

    
  end

  # POST /reportings
  # POST /reportings.xml
  def create
    @discipline = Discipline.find(params[:discipline_id])
    @reporting = @discipline.reportings.build(params[:reporting])

      if @reporting.save
        redirect_to discipline_reporting_url(@discipline, @reporting)
    else
      render :action => "new" 
      end

  end

  # PUT /reportings/1
  # PUT /reportings/1.xml
  def update
    @discipline = Discipline.find(params[:discipline_id])
    @reporting = Reporting.find(params[:id])
     if @reporting.update_attributes(params[:reporting])
        redirect_to discipline_reporting_url(@discipline, @reporting)
     else
        render :action => "edit"
     end
  end

  # DELETE /reportings/1
  # DELETE /reportings/1.xml
  def destroy
    @discipline = Discipline.find(params[:discipline_id])
    @reporting = Reporting.find(params[:id])
    @reporting.destroy

    respond_to do |format|
      format.html { redirect_to discipline_reportings_path(@discipline)  }
      format.xml  { head :ok }
    end
 end
end
