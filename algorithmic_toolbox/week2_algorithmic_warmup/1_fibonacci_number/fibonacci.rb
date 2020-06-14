#!/usr/bin/env ruby
# by Andronik Ordian


fib_n = gets.chomp.to_i
if fib_n == 0
  puts 0
  return
end

fib_init_arr = [0,1]

(fib_n - 1).times do
  fib_init_arr << (fib_init_arr[-1] + fib_init_arr[-2])
end

puts fib_init_arr.last

