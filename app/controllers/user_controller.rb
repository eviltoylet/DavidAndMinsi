class UserController < ApplicationController
  # Redirect them to the home page if they don't input a valid user
  def index
    redirect_to('/')
  end

  def show
    @user = User.find_by_custom_link params[:id]
    if(@user.nil?)
      # show an error page instead?
      redirect_to('/')
    else
      render 'show'
    end
  end
end
