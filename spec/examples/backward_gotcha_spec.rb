require File.dirname(__FILE__) + '/../spec_helper'

describe BackwardGotcha do

  before(:all) do
    Gotcha.unregister_all_types
    Gotcha.register_type BackwardGotcha
  end

  it 'should be able to ask a question' do
    gotcha = Gotcha.random
    expect(gotcha.question).not_to be_empty
  end

end
