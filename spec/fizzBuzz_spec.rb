require 'spec_helper'

describe Fizzbuzz do
	before do 
		@fizzbuzz = Fizzbuzz.new()
	end


  describe "#fizz_buzz" do
	  before do
	  	@fizz_buzz_true = @fizzbuzz.fizz_buzz(15)
      @fizz_buzz_false = @fizzbuzz.fizz_buzz(5)
	  end

  	it "should return true for a number that is a multiple of both 5 and 3" do		
  		@fizz_buzz_true.should == true
  	end

    it "should return false for a number that is only a multiple of 5" do   
      @fizz_buzz_false.should == false
    end

	end

  describe "#fizz" do 
    before do 
      @fizz_true = @fizzbuzz.fizz(6)
      @fizz_false = @fizzbuzz.fizz(8)
    end

    it "should return true for a number that is a multiple of 3" do
      @fizz_true.should == true
    end

    it "should return false for a number that is not a multiple of 3" do
      @fizz_false.should == false
    end
  end

  describe "#buzz" do
    before do
      @buzz_true = @fizzbuzz.buzz(25)
      @buzz_false = @fizzbuzz.buzz(9)
    end

    it "should return true for a number that is a multiple of 5" do
      @buzz_true.should == true
    end

    it "should return false for a number that is not a multiple of 5" do
      @buzz_false.should == false
    end
  end
end

