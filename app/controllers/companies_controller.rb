class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def show
    @company = Company.find_by_name(params[:id])
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      flash[:success] = "Company created"
      redirect_to @company        
    else
      render 'new'
    end    
  end
end
