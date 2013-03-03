class RsvpController < ApplicationController
  def show
    @rsvp = Rsvp.where("user = '#{params[:user]}'").first
  end

  def edit
    @rsvp = Rsvp.where("user = '#{params[:user]}'").first
    if @rsvp.nil?
      redirect_to "/rsvp/invalid?user=#{params[:user]}"
      return
    end
    redirect_to "/rsvp/show?user=#{params[:user]}" unless @rsvp.words["13"].blank?
  end

  def update
    @rsvp = Rsvp.new(params[:rsvp])
    @rsvp.save
    redirect_to "/rsvp/show?user=#{params["rsvp"]["user"]}"
  end

  def invalid

  end
end
