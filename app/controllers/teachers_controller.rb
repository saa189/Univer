class TeachersController < ApplicationController
  # GET /teachers
  # GET /teachers.xml
  def index
    
    @discipline = Discipline.find(params[:discipline_id])
    @teachers = @discipline.teachers
  end

  # GET /teachers/1
  # GET /teachers/1.xml
  def show
    @discipline = Discipline.find(params[:discipline_id])
    @teacher = @discipline.teachers.find(params[:id])
  end

  # GET /teachers/new
  # GET /teachers/new.xml
  def new
    @discipline = Discipline.find(params[:discipline_id])
    @teacher = @discipline.teachers.build
  end

  # GET /teachers/1/edit
  def edit
    @discipline = Discipline.find(params[:discipline_id])
    @teacher = @discipline.teachers.find(params[:id])
    
  end

  # POST /teachers
  # POST /teachers.xml
  def create
    @discipline = Discipline.find(params[:discipline_id])
    @teacher = @discipline.teachers.build(params[:teacher])
      if @teacher.save
        @contract = Contract.create(:teacher_id => @teacher.id, :name => @teacher.name, :surname => @teacher.surname, :lastname => @teacher.lastname)
        redirect_to discipline_teacher_url(@discipline, @teacher)
    else
      render :action => "new" 
      end
  end

  # PUT /teachers/1
  # PUT /teachers/1.xml
  def update
    @discipline = Discipline.find(params[:discipline_id])
    @teacher = Teacher.find(params[:id])
     if @teacher.update_attributes(params[:teacher])
        redirect_to discipline_teacher_url(@discipline, @teacher)
     else
        render :action => "edit"
     end
  end


  # DELETE /teachers/1
  # DELETE /teachers/1.xml
  def destroy
    @discipline = Discipline.find(params[:discipline_id])
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    @contract = Contract.find(:first, :conditions => "teacher_id = #{@teacher.id}")
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to discipline_teachers_path(@discipline)  }
      format.xml  { head :ok }
    end
 end
end
