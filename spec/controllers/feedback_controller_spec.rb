require 'spec_helper'

describe FeedbackController do

  before :each do
    Feedback.deliveries.clear
  end

  it 'should send an email on create' do
    post :create, feedback: 'Oh hai'
    Feedback.deliveries.size.should eq 1
  end

  it "won't send an email if feedback is empty" do
    post :create, feedback: ''
    Feedback.deliveries.size.should eq 0
  end
end
