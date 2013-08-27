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

  describe "#value_for" do
    before do 
      @buzz = @fizzbuzz.value_for(35)
      @fizz = @fizzbuzz.value_for(12)
      @fizz_buzz = @fizzbuzz.value_for(15)
      @number = @fizzbuzz.value_for(2)
    end

    it "should return 'buzz' for a multiple of 5" do
      @buzz.should == "buzz"
    end

    it "should return 'fizz' for a multiple of 3" do 
      @fizz.should == 'fizz'
    end

    it "should return 'FizzBuzz' for a multiple of both 3 and 5" do
      @fizz_buzz.should == 'FizzBuzz'
    end

    it "should return the number if it is not a multiple of 3 and 5" do
      @number.should == 2
    end
  end
end

