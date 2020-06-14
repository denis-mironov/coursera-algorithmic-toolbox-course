# Visualisation: https://www.toptal.com/developers/sorting-algorithms
# https://www.youtube.com/watch?v=4s-aG6yGGLU&t=330s

def quicksort(array, beg_index, end_index)
  if beg_index < end_index
    p_index = partition(array, beg_index, end_index)
    quicksort(array, beg_index, p_index - 1)
    quicksort(array, p_index + 1, end_index)
  end

  array
end

def partition(arr, beg_index, end_index)
  # beg_index select one element from the list, can be any element.
  # rearrange the list so all elements less than pivot are left of it, elements greater than pivot are right of it.
  pivot = arr[end_index]
  p_index = beg_index

  i = beg_index
  while i < end_index
    if arr[i] <= pivot
      temp = arr[i]
      arr[i] = arr[p_index]
      arr[p_index] = temp
      p_index += 1
    end
    i += 1
  end

  # swap
  temp = arr[p_index]
  arr[p_index] = pivot
  arr[end_index] = temp
  p_index
end

puts 'Please, enter array size'
arr_size = gets.chomp.to_i
array = Array.new(arr_size) { rand(10..100) }
n = array.length

if n <= 1
  print "#{array}\n"
  return
end

print "#{array}\n"
puts '-' * 50

beg_index = array.index(array.first)
end_index = array.index(array.last)
sorted = quicksort(array, beg_index, end_index)

print "#{sorted}\n"

