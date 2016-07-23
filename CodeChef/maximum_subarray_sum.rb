number = gets.chomp.to_i
ans = []
number.times do 
  iterate = gets.chomp.to_i
  input_number = gets.chomp
  sum = 0
  input_number_array = input_number.split(" ").map {|a| a.to_i }
  avg = input_number_array.inject(0){|sum,x| sum + x }.to_f / input_number_array.length
  if avg >= 4.0
    ans << ["Yes"]
  else
    ans << ["No"]
  end 
end
ans.each { |a| puts a }
