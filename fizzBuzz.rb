#"Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
#For numbers which are multiples of both three and five print “FizzBuzz”."
#Assumption: That we print the actual number where not a multiple of three or five

class Fizzbuzz

  def fizz_buzz(i)
    (i%5 == 0) && (i%3 == 0)
  end

  def fizz(i)
    (i%3 == 0)
  end

  def buzz(i)
    (i%5 == 0)
  end

  def print
    for i in 1..100
      if fizz_buzz(i)
        puts "FizzBuzz"
      elsif fizz(i)
        puts "fizz"
      elsif buzz(i) 
        puts "buzz"
      else
        puts i
      end
    end
  end
end

bob = Fizzbuzz.new
bob.print()




    	

		