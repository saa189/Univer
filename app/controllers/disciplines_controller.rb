class DisciplinesController < ApplicationController
  # GET /disciplines
  # GET /disciplines.xml
  def index
    @group = Group.find(params[:group_id])
    @disciplines = @group.disciplines
  end

  # GET /disciplines/1
  # GET /disciplines/1.xml
  def show
    @group = Group.find(params[:group_id])
    @discipline = @group.disciplines.find(params[:id])
  end

  # GET /disciplines/new
  # GET /disciplines/new.xml
  def new
    @group = Group.find(params[:group_id])
    @discipline = @group.disciplines.build
  end

  # GET /disciplines/1/edit
  def edit
    @group = Group.find(params[:group_id])
    @discipline = @group.disciplines.find(params[:id])

    
  end

  # POST /disciplines
  # POST /disciplines.xml
  def create
    @group = Group.find(params[:group_id])
    @discipline = @group.disciplines.build(params[:discipline])

      if @discipline.save
        redirect_to group_discipline_url(@group, @discipline)
    else
      render :action => "new" 
      end

  end

  # PUT /disciplines/1
  # PUT /disciplines/1.xml
  def update
    @group = Group.find(params[:group_id])
    @discipline = Discipline.find(params[:id])
     if @discipline.update_attributes(params[:discipline])
        redirect_to group_discipline_url(@group, @discipline)
     else
        render :action => "edit"
     end
  end

  # DELETE /disciplines/1
  # DELETE /disciplines/1.xml
  def destroy
    @group = Group.find(params[:group_id])
    @discipline = Discipline.find(params[:id])
    @discipline.destroy

    respond_to do |format|
      format.html { redirect_to group_disciplines_path(@group)  }
      format.xml  { head :ok }
    end
 end
end
