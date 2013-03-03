class RsvpController < ApplicationController
  def show
    @rsvp = Rsvp.find_by_user params[:user]
  end

  def edit
    @rsvp = Rsvp.find_by_user params[:user]
    if @rsvp.nil?
      redirect_to "/rsvp/invalid?user=#{params[:user]}"
      return
    end
    redirect_to "/rsvp/show?user=#{params[:user]}" unless @rsvp.words["13"].blank?
  end

  def update
    @rsvp = Rsvp.find_by_user params[:rsvp][:user]
    @rsvp.update_attributes(params[:rsvp])
    redirect_to "/rsvp/show?user=#{params[:rsvp][:user]}"
  end

  def invalid

  end
end
