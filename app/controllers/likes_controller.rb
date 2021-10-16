class LikesController < ApplicationController
  before_action :authenticate_user!
	before_action :find_event



  # def create
  #   @event.likes.create(user_id: current_user.id)
  #   redirect_to event_path(@event)
  # end

  def already_liked?
  Like.where(user_id: current_user.id, event_id:
  params[:event_id]).exists?
end
  def create
  if already_liked?
    flash[:notice] = "Sorry! You can't like more than once"
  else
    @event.likes.create(user_id: current_user.id)
  end
  redirect_to event_path(@event)
end

  private
  def find_event
    @event = Event.find(params[:event_id])
  end
end
