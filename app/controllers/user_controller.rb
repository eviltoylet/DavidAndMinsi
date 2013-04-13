class UserController < ApplicationController
  # Redirect them to the home page if they don't input a valid user
  def index
    redirect_to('/')
  end

  def madlib
    @user = User.find_by_custom_link params[:id]
    @user.update_attributes(params[:user]) unless params[:user].nil?
    @user.words ||= {}
    if(@user.nil?)
      redirect_to('/')
    else
      view_context.getmapping.each do |key, value|
        if @user.words[key].blank?
          # send to the edit controller
          render 'edit_madlib'
          return
        end
      end unless @user.words.nil?

      # send to the show controller
      render 'show_madlib'
    end
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

  def update
    @user = User.find_by_custom_link params[:id]
    @user.update_attributes(params[:user])

    redirect_to "/user/#{@user.custom_link}/madlib"
  end
end
