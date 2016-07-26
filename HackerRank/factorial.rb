N = gets.to_i

def factorial n
	if n == 1
		1
	else
		n * factorial(n-1)
	end
end

puts factorial N