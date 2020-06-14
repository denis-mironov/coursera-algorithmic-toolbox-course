# Visualisation: https://www.toptal.com/developers/sorting-algorithms
# https://www.youtube.com/watch?v=uCbV2xHxalk

# The main idea of this method is to create a sorted sequence by attaching one element after another in the correct order. The selection sorting algorithm consists of several successive steps. At each sorting step, the current array element is interchanged with the element with the smallest value. Thus, an array of values is obtained, sorted in ascending order.

# Основная мысль этого метода заключается в том, чтобы создать отсортированную последовательность, присоединяя к ней один элемент за другим в правильном порядке. Алгоритм сортировки выбором состоит из нескольких последовательных шагов. На каждом шаге сортировки текущий элемент массива меняется местами с элементом с наименьшим значением. Таким образом, получается массив значений, отсортированный по возрастанию.

puts 'Please, enter array size'
arr_size = gets.chomp.to_i
array = Array.new(arr_size) { rand(1..100) }
n = array.length

if n <= 1
  print "#{array}\n"
  return
end

print "#{array}\n"
puts '-' * 50

for i in (0...n-1) do #last element is already sorted
  min = i

  for j in (i+1...n) do #all elements except sorted ones
    if array[j] < array[min]
      min = j
    end
  end
  array[i], array[min] = array[min], array[i] #swap elements
end

print "#{array}\n"
