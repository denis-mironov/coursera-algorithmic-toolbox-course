result = gets.chomp.to_i
all_minimums = {}

time = Time.now
for m in 0..result do
  previous_min = {}

  if m <= 1
    all_minimums[m] = 0
  end

  if m > 0
    previous_min[m + 1] = (all_minimums[m]) + 1
    current_value1 = all_minimums[m + 1]
    if current_value1
      all_minimums[m + 1] = current_value1 > previous_min[m + 1] ? previous_min[m + 1] : current_value1
    else
      all_minimums[m + 1] = previous_min[m + 1]
    end

    previous_min[m * 2] = (all_minimums[m]) + 1
    current_value2 = all_minimums[m * 2]
    if current_value2
      all_minimums[m * 2] = current_value2 > previous_min[m * 2] ? previous_min[m * 2] : current_value2
    else
      all_minimums[m * 2] = previous_min[m * 2]
    end

    previous_min[m * 3] = (all_minimums[m]) + 1
    current_value3 = all_minimums[m * 3]
    if current_value3
      all_minimums[m * 3] = current_value3 > previous_min[m * 3] ? previous_min[m * 3] : current_value3
    else
      all_minimums[m * 3] = previous_min[m * 3]
    end
  end
end

puts all_minimums[result]

values = []
values << result
until result == 1
  if result%3 == 0
    sub_result = result / 3
    if all_minimums[result] > all_minimums[sub_result]
      result = sub_result
      values << sub_result
    else
      result = result - 1
      values << result
    end
  elsif result%2 == 0
    sub_result = result / 2
    if all_minimums[result] > all_minimums[sub_result]
      result = sub_result
      values << sub_result
    else
      result = result - 1
      values << result
    end
  else
    result = result - 1
    values << result
  end
end

values.sort.each{|v| print v.to_s + " "}
time2 = Time.now

puts time2 - time