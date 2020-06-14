number = gets.chomp.to_i
array_str = gets.chomp.split
array = array_str.map{|el| el.to_i}
sum = array.sum
target_sum = sum / 3
results = []

if number <= 2 || sum % 3 != 0
  puts 0
  return
end

if array.max > target_sum
  puts 0
  return
end

number.times.each do |i|
  array.combination(i).each{|a| results << a.sort if a.sum == target_sum}
end

uniq_results = results.uniq
if uniq_results.any? && results.length > 3
  results.combination(3).each do |comb|
    flattened = comb.flatten
    if flattened.length == number
      if array.sort == flattened.sort
        puts 1
        break
      else
        next
      end
    else
      next
    end
  end
elsif results.length == 3
  puts array.sort == results.flatten.sort ? 1 : 0
  return
else
  puts 0
  return
end
