class UsersController < ApplicationController
  before_filter :load_company
  
  def new
    @user = User.new
    #@user = @company.users.new
    # @company = Company.find_by_name(params[:id])
    # @user.user_type = params[:user_type]
  end

  def show
    @user = User.find(params[:id])
    #@user = @company.users.find(params[:id])
  end
    
  def create
    
    @user = @company.users.new(params[:user])
    if @user.save
      render 'show'
    else
      render :json => { "errors" => @user.errors } 
    end
        
  end
  
  private
  def load_company
    @company = Company.find_by_permalink(params[:company_id])
  end

end
