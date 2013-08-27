#in 1.9 ?d change dto print out a single character 
1.upto(?d){|i| i%3<1 &&x=:Fizz;puts i%5<1?"#{x}Buzz":x||i}    

#now need to use ord method
1.upto("d".ord){|i|i%3<1 && x= :Fizz;puts i%5<1? "#{x}Buzz" : x||i}

#shortest would now just be '100' instead of the ord method
1.upto(100){|i|i%3<1 && x= :Fizz;puts i%5<1? "#{x}Buzz" : x||i}




 