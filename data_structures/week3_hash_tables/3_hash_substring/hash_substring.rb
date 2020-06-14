string = gets.chomp
main_string = gets.chomp

string_size = string.length - 1
range_min = 0
range_max = string_size
results = []

(main_string.length - string_size).times do
  # puts "range_min = #{range_min}"
  # puts "range_max = #{range_max}"
  if main_string[range_min..range_max] == string
    results << range_min
  end

  range_min += 1
  range_max += 1
end

results.each{|el| print el.to_s + " "}
