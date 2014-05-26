# problem6.rb

# sum of squares of first 100 natural numbers = ??
# sum of the first 100 numbers and then square = ??
# diff between the two.


# ?how to improve
# tests

def squares_first_100
	total = 0
	(1..100).each do |number|
		total = total + number ** 2
	end
	puts "total squares first 100 = #{total}"
	return total
end

def sum_and_then_square_first_100
	total = 0
	(1..100).each do |number|
		total = total + number
	end
	total = total ** 2
	puts "total sum and then square = #{total}"
	return total
end

puts "answer is: #{sum_and_then_square_first_100 - squares_first_100}"
