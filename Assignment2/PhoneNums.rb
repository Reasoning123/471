#!/usr/bin/ruby
# RubyREm.rb -- Thanks to J Marshall 2011
  #Author: Cardenuto, ALexander (bh10297)

class Test
  # Constructor
  def initialize()
    # instance variables
    @pattern = /\+1 (\([2-9][0-9][0-9]\)|[2-9][0-9][0-9] \-) [2-9][0-9][0-9] \- [0-9][0-9][0-9][0-9]/  
    @output_file = "PhoneOP.txt"
    @output_file2 = "PatOP.txt"
  end

  def read_and_parse_from input_file
    # Open output file and associates a block code following  "do block |output|"
    File.open @output_file, 'w' do |output|
    File.open @output_file2, 'w' do |output2|
      # inspect inherited from Object 
      output.puts "The Pattern used #{@pattern.inspect}"
      # File.open not only opens a file and associates a block of code -- do block |input|  ...
      #  File.open also opens input_file as an iterator 
      File.open input_file do |input|
      # iterating each line in input_file
        input.each do |line|
          if match = @pattern.match(line)
            # if  RE matches the line, match is the array returned.  Print out the 2nd "group"
	    output.puts "  "
            output.puts "match #{match}"

#http://stackoverflow.com/questions/14073743/get-substring-after-the-first-symbol-in-ruby
    	    output2.puts "PATTERNS:"
	    output2.puts line.partition(@pattern).first
	    output2.puts @pattern.match(line)
	    output2.puts line.partition(@pattern).last
    	    output2.puts "         "
   	  end
        end
      end
      end
    end
  end
end


Test.new().read_and_parse_from "input.txt"
