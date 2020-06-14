#!/usr/bin/env ruby
# by Andronik Ordian
def gcd(a, b)
  loop do
    remainder = a%b
    a = b
    b = remainder
    break if remainder == 0
  end
  a
end

if __FILE__ == $0
  numbers = gets.chomp.split
  a = numbers[0].to_i
  b = numbers[1].to_i

  if numbers.include?('0')
    puts 0
    return
  end

  puts a * b/gcd(a, b)
end
