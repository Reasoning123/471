#!/usr/bin/ruby


	 # Ackerman.rb - Answer1B
         # Author: Cardenuto,ALexander 
         # Date: 09/09/2014
           
def Ack(m,n)
    if m == 0
        return n + 1
    end
    if n == 0 and m > 0
       return  Ack(m-1,1)
    end
    if n > 0 and m > 0
        return Ack(m-1,Ack(m,n-1))
    end
end

puts "enter first value: "
STDOUT.flush #http://rubylearning.com/satishtalim/getting_input.html
x = gets.chomp.to_i
STDOUT.flush
puts "enter second value: "
STDOUT.flush #http://rubylearning.com/satishtalim/getting_input.html
y = gets.chomp.to_i #http://stackoverflow.com/questions/11466988/ruby-convert-string-to-integer-or-float
puts Ack(x,y)
