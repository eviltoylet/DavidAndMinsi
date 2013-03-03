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
    view_context.getmapping.each do |key, value|
      if @rsvp.words[key].blank?
        return
      end
    end

    redirect_to "/rsvp/show?user=#{params[:user]}"
  end

  def update
    @rsvp = Rsvp.find_by_user params[:rsvp][:user]
    @rsvp.update_attributes(params[:rsvp])

    view_context.getmapping.each do |key, value|
      if params[:rsvp][:words][key].blank?
        redirect_to "/rsvp/edit?user=#{params[:rsvp][:user]}"
        return
      end
    end

    redirect_to "/rsvp/show?user=#{params[:rsvp][:user]}"
  end

  def invalid

  end
end
