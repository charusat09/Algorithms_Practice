# get problem statement at here :
# https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited


#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
energy = 100
move = 0

(1..n/k).each do |i|
    move += k
        if move == n
            move = 0
        end

        if c[move] == 1
            energy = energy - 2 - 1 
        else
            energy = energy -1
        end
end
puts energy

# input :
# 19 19
# 1 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1 1 1

# output :
# 97