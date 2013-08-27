require 'spec_helper'

describe Fizzbuzz do
	before do 
		@fizzbuzz = Fizzbuzz.new()
	end


  describe "#fizz_buzz" do
	  before do
	  	@fizz_buzz_true = @fizzbuzz.fizz_buzz(15)
      @fizz_buzz_five = @fizzbuzz.fizz_buzz(5)
      @fizz_buzz_three = @fizzbuzz.fizz_buzz(6)
	  end

    context "with a multiple of both 3 and 5" do 
  	  it "should return true" do		
  		  @fizz_buzz_true.should == true
  	  end
     end
    
    context "with only a only a multiple of 5" do 
      it "should return false" do   
        @fizz_buzz_five.should == false
      end
    end

    context "with only a multiple of 3" do 
      it "should return false" do 
        @fizz_buzz_three.should == false
      end
    end

	end

  describe "#fizz" do 
    before do 
      @fizz_true = @fizzbuzz.fizz(6)
      @fizz_false = @fizzbuzz.fizz(8)
    end

    context "with a number that is a multiple of 3" do 
      it "should return true" do
        @fizz_true.should == true
      end
    end

    context "without a number that is a multiple of 3" do 
      it "should return false" do
        @fizz_false.should == false
      end
    end
  end

  describe "#buzz" do
    before do
      @buzz_true = @fizzbuzz.buzz(25)
      @buzz_false = @fizzbuzz.buzz(9)
    end

    context "with a number that is a mutilple of 5" do 
      it "should return true" do
        @buzz_true.should == true
      end
    end

    context "without a number that is a multiple of 5" do 
      it "should return false" do
        @buzz_false.should == false
      end
    end
  end

  describe "#value_for" do
    before do 
      @buzz = @fizzbuzz.value_for(35)
      @fizz = @fizzbuzz.value_for(12)
      @fizz_buzz = @fizzbuzz.value_for(15)
      @number = @fizzbuzz.value_for(2)
    end

    context "with a multiple of 5" do 
      it "should return 'buzz'" do
        @buzz.should == "buzz"
      end
    end

    context "with a multiple of 3" do 
      it "should return 'fizz'" do 
        @fizz.should == 'fizz'
      end
    end

    context "with a multiple of both 3 and 5" do 
      it "should return 'FizzBuzz'" do
        @fizz_buzz.should == 'FizzBuzz'
      end
    end

    context "without a multiple of 3 and/or 5" do 
      it "should return the number" do
        @number.should == 2
      end
    end
  end
end

