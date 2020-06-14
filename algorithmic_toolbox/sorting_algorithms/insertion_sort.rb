# Visualisation: https://www.toptal.com/developers/sorting-algorithms
# https://www.youtube.com/watch?v=SIrdTFF8-4s

# When sorting by inserts, the array is sorted sequentially. Each next element under consideration is placed so as to be between the nearest minimum element and the nearest maximum.

# При сортировке вставками, массив перебирается последовательно. Каждый следующий рассматриваемый элемент размещается так, чтобы оказаться между ближайшим минимальным элементом и ближайшим максимальным.

  puts 'Please, enter array size'

  arr_size = gets.chomp.to_i
  array = Array.new(arr_size) { rand(-10..10) }
  n = array.length

  if n <= 1
    print "#{array}\n"
    return
  end

  print "#{array}\n"
  puts '-' * 50

  (1...n).each do |index| #for all array indexes except first
    element = array[index]

    while(index > 0 && array[index - 1] > element) #while previous array element bigger than current
      array[index], array[index - 1] =  array[index - 1], array[index] #swap elements
      index = index - 1 #to compare current swaped element with earlier
    end
  end
  print "#{array}\n"

