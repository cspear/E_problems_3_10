# problem4.rb

# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# 1. multiple every 3 digit number by every 3 digit number
# 2. convert to string, reverse and compare.



def palindrome?(value)
	value.to_s == value.to_s.reverse
end

def largest_value(array)
	array.sort[-1]
end

palindromes = Array.new
palindromes << 0

(100..999).each do |inner_num|
	(100..999).each do |outer_num|
		value = inner_num * outer_num
		if palindrome?(value)
			puts "palindrome found - #{value}.   inner: #{inner_num} outer: #{outer_num}"

			if value > palindromes[-1]
				palindromes << value
				puts "[Larger value found]"
			end
		end
	end
end	

puts "largest Palindrome found = #{largest_value(palindromes)}"