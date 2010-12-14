class StudentsController < ApplicationController 
  def index 
    @group = Group.find(params[:group_id]) 
    @students = @group.students 
  end 
  def show 
    @group = Group.find(params[:group_id]) 
    @student = @group.students.find(params[:id]) 
  end
  def new 
    @group = Group.find(params[:group_id]) 
    @student = @group.students.build 
  end
  def create
    @group = Group.find(params[:group_id])
    @student = @group.students.build(params[:student]) 
    if @student.save 
      redirect_to group_student_url(@group, @student)
    else 
      render :action => "new" 
    end 
   end 
   def edit
     @group = Group.find(params[:group_id])
     @student = @group.students.find(params[:id]) 
   end 
   def update 
     @group = Group.find(params[:group_id]) 
     @student = Student.find(params[:id]) 
     if @student.update_attributes(params[:student]) 
        redirect_to group_student_url(@group, @student) 
     else 
        render :action => "edit"
     end
    end 
   def destroy
     @group = Group.find(params[:group_id]) 
     @student = Student.find(params[:id]) 
     @student.destroy 
    
     respond_to do |format| 
       format.html { redirect_to group_students_path(@group) } 
       format.xml { head :ok } 
     end 
    end 
  end 
