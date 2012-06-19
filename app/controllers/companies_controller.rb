class CompaniesController < ApplicationController
  
  def new
    #redirect_to 'http://palmling.com' #See note below
    #Implement this in production of portal.palmling.com for security
    #until there is finally an authentication system in place    
    @company = Company.new
  end
  
  def index
    @companies = Company.all    
  end

  def show
    @company = Company.find_by_permalink(params[:id])
    #@company.name
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      #flash[:success] = "Company created"
      redirect_to @company        
      #render 'show'  
    else
      render 'new'
    end    
  end

end
