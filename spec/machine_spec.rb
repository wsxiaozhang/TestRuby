require 'machine'

describe Machine do

  #preparation for test
  before :each do
    @machine = Machine.new([:shopping, :checking_out])
    @machine.events = {:checkout => {:from => :shopping, :to => :checking_out}}
  end

=begin
  it "should initially have a state of :initial" do
    @machine.state.should == :initial
  end
=end

  it "should remember a list of valid states" do
    @machine.states.should == [:shopping, :checking_out]
  end

  it "should initially have a state of the first state" do
    @machine.state.should == :shopping
  end

  it "should remember a list of events with transitions" do
    @machine.events.should == {:checkout => {:from => :shopping, :to=>:checking_out}}

  end

  it "should transition to :checking_out upon #trigger(:checkout) event" do
    @machine.trigger(:checkout)
    @machine.state.should == :checking_out
  end

  it "should transition to :success upon #trigger(:accept_card)" do
    @machine.events = {
        :checkout => {:from => :shopping, :to => :checking_out},
        :accept_card => {:from => :checking_out, :to => :success}
    }
    @machine.trigger(:checkout)
    @machine.state.should == :checking_out
    @machine.trigger(:accept_card)
    @machine.state.should == :success
  end

  it "should not transition from :shopping to :success upon :accept_card" do
    @machine.events = {
        :checkout => {:from => :shopping, :to => :checking_out},
        :accept_card => {:from => :checking_out, :to => :success}
    }
    @machine.trigger(:accept_card)
    @machine.state.should_not == :success
  end
end