class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @venue = Venue.find_by_id(params[:venue_id]) 
    @venue = Event.find_by_id(params[:event_id]) if @venue.nil?
    @comment = @venue.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to venue_path(@venue), notice: "Thanks for Comment"
    else
      render 'comments/form'
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to event_path(@event)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:user_id, :username, :body)
    end
end









# rgba(30,20,50,01)