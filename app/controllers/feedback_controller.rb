class FeedbackController < ApplicationController

  def new
    @feedback = {feedback: ''}
  end

  def create
    unless params[:feedback].empty?
      Feedback.like_a_boss(params[:feedback])
    end
    redirect_to root_path, notice: 'Thank you for your feedback!'
  end

end