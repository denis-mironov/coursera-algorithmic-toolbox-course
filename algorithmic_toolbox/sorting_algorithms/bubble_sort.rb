# Visualisation: https://www.toptal.com/developers/sorting-algorithms

# We will go through the array from left to right. If the current item is larger than the next, swap them. We do this until the array is sorted. Note that after the first iteration, the largest element will be at the end of the array, in the right place. After two iterations, the two largest elements will be in the right place, and so on. Obviously, after no more than n iterations, the array will be sorted. Thus, the asymptotic behavior in the worst and middle case is O(n2), in the best case - O(n). Note that bubble sorting works slowly on tests in which small elements are at the end (they are also called “turtles”). Such an element at each step of the algorithm will shift only one position to the left.

# Будем идти по массиву слева направо. Если текущий элемент больше следующего, меняем их местами. Делаем так, пока массив не будет отсортирован. Заметим, что после первой итерации самый большой элемент будет находиться в конце массива, на правильном месте. После двух итераций на правильном месте будут стоять два наибольших элемента, и так далее. Очевидно, не более чем после n итераций массив будет отсортирован. Таким образом, асимптотика в худшем и среднем случае – O(n2), в лучшем случае – O(n). Заметим, что сортировка пузырьком работает медленно на тестах, в которых маленькие элементы стоят в конце (их еще называют «черепахами»). Такой элемент на каждом шаге алгоритма будет сдвигаться всего на одну позицию влево.

puts 'Please, enter array size'

arr_size = gets.chomp.to_i
array = Array.new(arr_size) { rand(0..100) }

if array.size <= 1
  print "#{array}\n"
  return
end

print "#{array}\n"
puts '-' * 50

n = array.length
iteration = 1
swapped = true

while swapped do # means that array is already sorted if there is no swaps
  swapped = false
  (n - iteration).times do |i| #last elements in previous iterations are already sorted
    if array[i] > array[i + 1]
      array[i], array[i + 1] = array[i + 1], array[i] #elements swaping
      swapped = true
    end
  end
  iteration += 1
end

print "#{array}\n"

