require 'spec_helper'

describe XboxLive do
  describe ".profile" do
    context "when the gamertag exists" do
      before do
        Faraday.stub("get").
          with('http://www.xboxleaders.com/api/profile.json?gamertag=nicolasjensen').
          and_return(double(:body => File.open("spec/support/profile.json")))
      end
      it "should return a hash with the profile data" do
        XboxLive.profile("nicolasjensen")["Data"]["Gamertag"].should be_== "nicolasjensen"
      end
    end
  end
end
