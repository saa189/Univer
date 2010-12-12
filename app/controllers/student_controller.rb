class StudentController < ApplicationController
   def create
        @student=Student.new(params[:student])
        if @student.save
            flash[:notice] = "#{@student.name}created."
            redirect_to(:action => 'index')
        else
            render :action => "new"
        end
  end
  def destroy
     @student=Student.find(params[:id])
                @student.destroy
                respond_to do |format|
                        redirect_to(students_url)
                end
  end
  def index
        @student=Student.find(:all, :order => :name)
        respond_to do |format|
             format.html # index.html.erb
             format.xml { render :xml => @students }
        end
    end
   def new
        @student=Student.new
    end
end
