#!/usr/bin/ruby


	 # Functional.rb - Answer1B
         # Author: Cardenuto,ALexander 
         # Date: 09/09/2014
           


def F(i,j)
	if i == j
		return i
	end
	if i > j
		return F(i-j,j)
	else 
		return F(i,j-i)
	end
end

puts "enter first value: "
STDOUT.flush #http://rubylearning.com/satishtalim/getting_input.html
x = gets.chomp.to_i
STDOUT.flush
puts "enter second value: "
STDOUT.flush #http://rubylearning.com/satishtalim/getting_input.html
y = gets.chomp.to_i #http://stackoverflow.com/questions/11466988/ruby-convert-string-to-integer-or-float
puts F(x,y)
