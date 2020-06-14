# Visualisation: https://www.toptal.com/developers/sorting-algorithms
# https://www.youtube.com/watch?v=uCbV2xHxalk



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
    if left[0] <= right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
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

sorted = merge_sort(array)
print "#{sorted}\n"
