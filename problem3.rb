# problem3.rb

require 'prime'

# find the largest prime factor of 600851475143

special = 600851475143
# special = 13195
factors = Array.new

Prime.each(10000) do |prime|
	if special != 0 
		if special%prime == 0
			# then it divided cleanly, so its good.
			special = special/prime
			factors << prime
		
			if special.prime?
				factors << special
				special = 0
				puts "successful set of factors found"
			end
		else
			# skip this prime #, its no good.
		end
	end
end

puts "the factors are: #{factors}"