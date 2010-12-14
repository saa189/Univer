class GroupsController < ApplicationController
 def index 
   @groups = Group.all 
   respond_to do |format| 
   format.html # index.html.erb 
   format.xml { render :xml => @groups } 
   end 
 end
 def create
   @group = Group.new(params[:group])

   respond_to do |format|
     if @group.save 
       flash[:notice] = 'Группа создана.' 
       format.html { redirect_to(@group) }
       format.xml { render :xml => @group, :status => :created, :location => @group } 
     else 
       format.html { render :action => "new" } 
       format.xml { render :xml => @group.errors, :status => :unprocessable_entity } 
   end
 end 
end 
 def new 
   @group = Group.new 
    respond_to do |format| 
    format.html # new.html.erb 
    format.xml { render :xml => @group } 
    end 
  end 
def show 
  @group = Group.find(params[:id]) 
  respond_to do |format| 
  format.html # show.html.erb 
  format.xml { render :xml => @group }
 end
end  
def edit 
 @group = Group.find(params[:id])
end 
def update
 @group = Group.find(params[:id])
 respond_to do |format|
 if @group.update_attributes(params[:group])
 flash[:notice] = 'group was successfully updated.' 
 format.html { redirect_to(@group) }
 format.xml { head :ok } 
 else 
 format.html { render :action => "edit" } 
 format.xml { render :xml => @group.errors, :status => :unprocessable_entity } 
 end
 end 
end
def destroy 
  @group = Group.find(params[:id]) 
  @group.destroy
 
  respond_to do |format| 
  format.html { redirect_to(groups_url) } 
  format.xml { head :ok } 
 end 
end  
end
