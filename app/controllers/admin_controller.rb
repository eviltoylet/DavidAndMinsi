class AdminController < ApplicationController
  def add
    @user = User.new(params[:user])
    @user.save
    redirect_to :back
  end

  def index
    @users = User.all
  end

  def delete
    @user = User.find_by_custom_link(params[:user])
    @user.destroy unless @user.nil?

    redirect_to :back
  end
end