require 'spec_helper'

describe TrackController do
  fixtures :tracks

  it 'should have a route' do
    route_for(:controller => "track", :action => "create").should == '/track/create'    
  end

  it "should respond to create" do
    track = tracks(:one)
    track_title = 'new_track'
    post(:create,:track => {:title => track_title,
         :description  => track.description, 
         :content_url => track.content_url})
    response.should be_success
    track = Track.find_by_title(track_title)
    response.body.should == track.to_json
  end

end
