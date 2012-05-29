require 'spec_helper'

describe BracketConverter do
  it "can bloody well give me a stewpid kobold cave" do
    ps = BracketConverter.new.do WGSetting
    ps.title.should eq 'Friendly Kobold Cave'
  end

end
