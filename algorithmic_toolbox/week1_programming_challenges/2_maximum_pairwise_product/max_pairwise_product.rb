#!/usr/bin/env ruby
# by Andronik Ordian

if __FILE__ == $0
  sequence_size = gets.chomp
  sequence_numbers = gets.chomp

  array = sequence_numbers.split(' ').map{|e| e.to_i}
  max_integers = array.sort.last(2)
  puts max_integers[0] * max_integers[1]
end