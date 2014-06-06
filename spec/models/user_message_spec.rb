require 'spec_helper'

describe UserMessage do
  it "should have text" do 
    m = UserMessage.new
    m.text = "lskdjslkdjflksj"
    m.save

    UserMessage.first.text.should == "lskdjslkdjflksj"

  end
end
