class ContractsController < ApplicationController
 def index 
   @contracts = Contract.all 
   respond_to do |format| 
   format.html # index.html.erb 
   format.xml { render :xml => @contracts } 
   end 
 end
 def create
   @contract = Contract.new(params[:contract])

   respond_to do |format|
     if @contract.save 
       format.html { redirect_to(@contract) }
       format.xml { render :xml => @contract, :status => :created, :location => @contract } 
     else 
       format.html { render :action => "new" } 
       format.xml { render :xml => @contract.errors, :status => :unprocessable_entity } 
   end
 end 
end 
 def new 
   @contract = Contract.new 
    respond_to do |format| 
    format.html # new.html.erb 
    format.xml { render :xml => @contract } 
    end 
  end 
def show 
  @contract = Contract.find(params[:id]) 
  respond_to do |format| 
  format.html # show.html.erb 
  format.xml { render :xml => @contract }
 end
end  
def edit 
 @contract = Contract.find(params[:id])
end 
def update
 @contract = Contract.find(params[:id])
 respond_to do |format|
 if @contract.update_attributes(params[:contract])
 format.html { redirect_to(@contract) }
 format.xml { head :ok } 
 else 
 format.html { render :action => "edit" } 
 format.xml { render :xml => @contract.errors, :status => :unprocessable_entity } 
 end
 end 
end
def destroy 
  @contract = Contract.find(params[:id]) 
  @contract.destroy
  @teacher = Teacher.find(:first, :conditions => "id = #{@contract.teacher_id}")
  @teacher.destroy
  respond_to do |format| 
  format.html { redirect_to(contracts_url) } 
  format.xml { head :ok } 
 end 
end  
end
