 # /* Author: Cardenuto, ALexander (bh10297)
#      Date: 09/05/2014

#!/usr/bin/ruby
def gcdRy(i,j)
	while i != j
		if i > j
			i = i - j
		else
			j = j - i
		end
	end
	puts[i]
end
		
