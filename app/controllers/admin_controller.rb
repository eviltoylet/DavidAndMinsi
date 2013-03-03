class AdminController < ApplicationController
  def add
    @rsvp = Rsvp.new( {:user => params[:user], :words => {} })
    @rsvp.save
    redirect_to :back
  end

  def index
    @rsvps = Rsvp.all
  end

  def delete
    @rsvp = Rsvp.find_by_user params[:user]
    @rsvp.destroy unless @rsvp.nil?

    redirect_to :back
  end
end