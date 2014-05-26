# problem5.rb

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 
# without any remainder.

# What is the smallest positive number that is evenly divisible 
# by all of the numbers from 1 to 20?




def meet_criteria?(value)
	# clean up with regressive approach
	# add tests

	false

	if value%20 == 0
		if value%19 == 0
			if value %18 == 0
				if value%17 == 0
					if value%16 == 0
						if value%15 == 0
							if value%14 == 0
								if value%13 == 0
									if value%11 == 0
										true
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

index = 0
found = false

while found != true
	index = index + 1
	found = meet_criteria?(index)
end

puts "found number:  #{index}"