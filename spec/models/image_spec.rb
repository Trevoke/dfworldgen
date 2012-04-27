require 'spec_helper'

describe Image do

  it 'should return the imgur URL for a small thumbnail' do
    expected = 'http://imgur.com/XfuJhs.png'
    Image.small_thumbnail('XfuJh').should eq expected
  end

  it 'should return the imgur URL for a large thumbnail' do
    expected = 'http://imgur.com/XfuJhl.png'
    Image.large_thumbnail('XfuJh').should eq expected
  end

  it 'should return the imgur URL for the original image' do
    expected = 'http://imgur.com/XfuJh.png'
    Image.original_image('XfuJh').should eq expected
  end

  it 'returns an empty string if asked to upload nothing' do
    Image.upload(nil).should eq ''
  end
end