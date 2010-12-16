class LecturersController < ApplicationController
  # GET /lecturers
  # GET /lecturers.xml
  def index
    
    @group = Group.find(params[:group_id])
    @lecturers = @group.lecturers
  end

  # GET /lecturers/1
  # GET /lecturers/1.xml
  def show
    @group = Group.find(params[:group_id])
    @lecturer = @group.lecturers.find(params[:id])
  end

  # GET /lecturers/new
  # GET /lecturers/new.xml
  def new
    @group = Group.find(params[:group_id])
    @lecturer = @group.lecturers.build
  end

  # GET /lecturers/1/edit
  def edit
    @group = Group.find(params[:group_id])
    @lecturer = @group.lecturers.find(params[:id])
    
  end

  # POST /lecturers
  # POST /lecturers.xml
  def create
    @group = Group.find(params[:group_id])
    @lecturer = @group.lecturers.build(params[:lecturer])

      if @lecturer.save
        redirect_to group_lecturer_url(@group, @lecturer)
    else
      render :action => "new" 
      end

  end

  # PUT /lecturers/1
  # PUT /lecturers/1.xml
  def update
    @group = Group.find(params[:group_id])
    @lecturer = Lecturer.find(params[:id])
     if @lecturer.update_attributes(params[:lecturer])
        redirect_to group_lecturer_url(@group, @lecturer)
     else
        render :action => "edit"
     end
  end


  # DELETE /lecturers/1
  # DELETE /lecturers/1.xml
  def destroy
    @group = Group.find(params[:group_id])
    @lecturer = Lecturer.find(params[:id])
    @lecturer.destroy

    respond_to do |format|
      format.html { redirect_to group_lecturers_path(@lecturer)  }
      format.xml  { head :ok }
    end
 end
end
