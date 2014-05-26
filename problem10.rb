# problem10.rb

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

total = 0
Prime.each(1999999) do |prime_num|
	total = total + prime_num
end 

puts total


