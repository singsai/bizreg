class UsersController < ApplicationController

  def new
    @user = User.new
    @user.user_type = params[:user_type]
  end

  def show
    @user = User.find(params[:id])
  end
    
  def create
    @user = User.new(params[:user])
    #@company = Company.find_by_name(params[:id])
    if @user.save
      flash[:success] = "Thanks for signing up"
      
      #redirect_to @user
      #redirect_to '/admin/companies/new' #works
      
      #alert(@company.name)
      
      UserMailer.welcome_email(@user).deliver      
      #UserMailer.welcome_email(@user, @company).deliver      
      redirect_to '/registrationconfirmed'
      
        
      # if request.referer.include? "free"
      #   UserMailer.welcome_email(@user, "free").deliver
      #   render 'thanks_free'  
      # else  
      #   UserMailer.welcome_email(@user, "regular").deliver
      #   redirect_to @user
      # end
      
    else
      #render '/register/new'
      #render :nothing => true

      render 'companies/register' 



      #render :template => 'companies#register'
    end            
  end

  def new_free
    @user = User.new
    @user.user_type = params[:user_type]
  end

end
