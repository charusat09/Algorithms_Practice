# find problem at :
# https://www.hackerrank.com/challenges/30-2d-arrays

# Smaple input : 
# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0

# sample output :
# 19

#!/bin/ruby

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

@hour_glass_sum = []

def find_hour_glass_sum(arr1, arr2, arr3)
    ans = 0
    (0..3).each do |j|
       @hour_glass_sum << arr1[j] + arr1[j+1] + arr1[j+2] + arr2[j+1] + arr3[j] + arr3[j+1] + arr3[j+2]
    end
end

(0..3).each do |i|
   find_hour_glass_sum(arr[i],arr[i+1],arr[i+2])
end

puts @hour_glass_sum.max


# Explaination

# 1 1 1   1 1 0   1 0 0   0 0 0
#   1       0       0       0
# 1 1 1   1 1 0   1 0 0   0 0 0

# 0 1 0   1 0 0   0 0 0   0 0 0
#   1       1       0       0
# 0 0 2   0 2 4   2 4 4   4 4 0

# 1 1 1   1 1 0   1 0 0   0 0 0
#   0       2       4       4
# 0 0 0   0 0 2   0 2 0   2 0 0

# 0 0 2   0 2 4   2 4 4   4 4 0
#   0       0       2       0
# 0 0 1   0 1 2   1 2 4   2 4 0

# The hourglass with the maximum sum (19) is:

# 2 4 4
#   2
# 1 2 4
