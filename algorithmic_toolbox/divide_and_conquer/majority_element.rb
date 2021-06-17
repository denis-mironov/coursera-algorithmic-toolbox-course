def merge_sort(array)
  l = array.length
  return array if l <= 1

  mid = l/2
  left  = array[0...mid]
  right = array[mid...l]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left[0].to_i <= right[0].to_i
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end

el_size = gets.chomp.to_i
string_arr = gets.chomp.split

if el_size == 1
  puts 1
  return
end

# merge sorting algorithm
sorted = merge_sort(string_arr)
half = el_size.odd? ? el_size.to_f/2 : el_size/2
mid_el = sorted[el_size/2]

mid_el_count = sorted.count(mid_el)
puts mid_el_count.to_i > half ? 1 : 0
