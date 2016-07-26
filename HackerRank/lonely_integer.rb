# find problem statement here: https://www.hackerrank.com/challenges/lonely-integer


#!/bin/ruby
def  lonelyinteger(a) 
 freq = a.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
 freq.key(1)
end
a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
print lonelyinteger(b)


# sample input :
# 5
# 0 0 1 2 1

# output should be : 2
# (becuase it's lonelyinteger)