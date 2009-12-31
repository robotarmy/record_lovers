require 'spec_helper'

describe Track do
  fixtures :tracks
  before(:each) do
    @valid_attribs = tracks(:one)
  end

  it "should not create a new instance without a title and a content_url attributes" do
    lambda {Track.create!(:description => 'I am a cake')}.should raise_error
  end
  it "should not create a duplicate title" do
    lambda {Track.create!(:title => 'I am a cake',:content_url => :cake)}.should_not raise_error
    lambda {Track.create!(:title => 'I am a cake',:content_url => :cake)}.should raise_error
  end
end
