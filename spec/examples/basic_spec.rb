require File.dirname(__FILE__) + '/../spec_helper'

describe Gotcha do

  before :all do
    Gotcha.unregister_all_types
  end

  before :all do
    class NextNumberGotcha < Gotcha::Base
      def initialize
        @question = '1, 2, 3, ?'
        @answer = 4
      end
    end
    Gotcha.register_type(NextNumberGotcha)
  end

  it 'should not skip validation by default' do
    expect(Gotcha.skip_validation?).to be_falsey
  end

  it 'should be able to be told to skip validation' do
    Gotcha.skip_validation = true
    expect(Gotcha.skip_validation?).to be_truthy
  end

  it 'should be able to select a random type of gotcha' do
    gotcha = Gotcha.random
    expect(gotcha).to be_a(Gotcha::Base)
  end

  it 'should be able to get the question for a gotcha' do
    gotcha = Gotcha.random
    expect(gotcha.question).not_to be_empty
  end

  it 'should be able to check the answer' do
    gotcha = Gotcha.random
    expect(gotcha.correct?(4)).to be_truthy
  end

  it 'should be able to check the answer even if we supply a string' do
    gotcha = Gotcha.random
    expect(gotcha.correct?('4')).to be_truthy
  end

  it 'should be able to verify it got the wrong answer' do
    gotcha = Gotcha.random
    expect(gotcha.correct?(5)).to be_falsey
  end

end
