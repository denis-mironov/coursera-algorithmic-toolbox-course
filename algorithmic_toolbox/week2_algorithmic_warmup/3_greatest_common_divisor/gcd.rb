#!/usr/bin/env ruby
# by Andronik Ordian

if __FILE__ == $0
  numbers = gets.chomp.split
  a = numbers[0].to_i
  b = numbers[1].to_i

  if b > 0
    loop do
      remainder = a%b
      a = b
      b = remainder
      break if remainder == 0
    end
    puts a
  end
end