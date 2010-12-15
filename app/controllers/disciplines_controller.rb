class DisciplinesController < ApplicationController
  # GET /disciplines
  # GET /disciplines.xml
  def index
    @disciplines = Discipline.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @disciplines }
    end
  end

  # GET /disciplines/1
  # GET /disciplines/1.xml
  def show
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @discipline }
    end
  end

  # GET /disciplines/new
  # GET /disciplines/new.xml
  def new
    @discipline = Discipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @discipline }
    end
  end

  # GET /disciplines/1/edit
  def edit
    @discipline = Discipline.find(params[:id])
  end

  # POST /disciplines
  # POST /disciplines.xml
  def create
    @discipline = Discipline.new(params[:discipline])

    respond_to do |format|
      if @discipline.save
        flash[:notice] = 'Discipline was successfully created.'
        format.html { redirect_to(@discipline) }
        format.xml  { render :xml => @discipline, :status => :created, :location => @discipline }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disciplines/1
  # PUT /disciplines/1.xml
  def update
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      if @discipline.update_attributes(params[:discipline])
        flash[:notice] = 'Discipline was successfully updated.'
        format.html { redirect_to(@discipline) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

def list
    @reporting = Discipline.find(:all)
  end

  # DELETE /disciplines/1
  # DELETE /disciplines/1.xml
  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy

    respond_to do |format|
      format.html { redirect_to(disciplines_url) }
      format.xml  { head :ok }
    end
  end
end
