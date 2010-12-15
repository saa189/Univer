class LecturersController < ApplicationController
  # GET /lecturers
  # GET /lecturers.xml
  def index
    @discipline = Discipline.find(params[:discipline_id])
    @lecturers = @discipline.lecturers
  end

  # GET /lecturers/1
  # GET /lecturers/1.xml
  def show
    @discipline = Discipline.find(params[:discipline_id])
    @lecturer = @discipline.lecturers.find(params[:id])
  end

  # GET /lecturers/new
  # GET /lecturers/new.xml
  def new
    @discipline = Discipline.find(params[:discipline_id])
    @lecturer = @discipline.lecturers.build
  end

  # GET /lecturers/1/edit
  def edit
    @discipline = Discipline.find(params[:discipline_id])
    @lecturer = @discipline.lecturers.find(params[:id])
    
  end

  # POST /lecturers
  # POST /lecturers.xml
  def create
    @discipline = Discipline.find(params[:discipline_id])
    @lecturer = @discipline.lecturers.build(params[:lecturer])

      if @lecturer.save
        redirect_to discipline_lecturer_url(@discipline, @lecturer)
    else
      render :action => "new" 
      end

  end

  # PUT /lecturers/1
  # PUT /lecturers/1.xml
  def update
    @discipline = Discipline.find(params[:discipline_id])
    @lecturer = Lecturer.find(params[:id])
     if @lecturer.update_attributes(params[:lecturer])
        redirect_to discipline_lecturer_url(@discipline, @lecturer)
     else
        render :action => "edit"
     end
  end


  # DELETE /lecturers/1
  # DELETE /lecturers/1.xml
  def destroy
    @discipline = Discipline.find(params[:discipline_id])
    @lecturer = Lecturer.find(params[:id])
    @lecturer.destroy

    respond_to do |format|
      format.html { redirect_to discipline_lecturers_path(@lecturer)  }
      format.xml  { head :ok }
    end
 end
end
