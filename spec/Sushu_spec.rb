require 'Sushu'

describe Sushu do
  before :each do
   subject {Sushu.new}
  end

 it "is_true?" do
   Sushu.new.is_true?.should be_true
 end
  its(:is_true?) {should be_true}

  it "is_false?" do
    Sushu.is_false?.should be_false
  end

  it "NumberIsChecked!" do
    subject.check
    subject.should be_checked
  end

end