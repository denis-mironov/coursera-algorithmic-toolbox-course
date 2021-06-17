def find_index(array, number)
  first_index = 0
  last_index  = array.length - 1

  while first_index <= last_index
    mid_index = (first_index + last_index) / 2
    array_el  = array[mid_index].to_i

    if array_el == number
      return mid_index
    elsif array_el > number
      last_index = mid_index - 1
      return -1 if first_index > last_index
    elsif array_el < number
      first_index = mid_index + 1
      return -1 if first_index > last_index
    end
  end
end

sorted_array = gets.chomp.split
sorted_array.shift
numbers = gets.chomp.split
numbers.shift

indexes = numbers.map do |number|
  find_index(sorted_array, number.to_i)
end

indexes.each do |el|
  print el.to_s + " "
end

