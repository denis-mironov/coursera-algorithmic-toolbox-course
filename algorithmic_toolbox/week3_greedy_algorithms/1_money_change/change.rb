#!/usr/bin/env ruby
# by Andronik Ordian


if __FILE__ == $0
  amount = gets.chomp.to_i
  coins_amount = [10, 5, 1]
  remainder = 0
  tens = 0
  fives = 0
  ones = 0

  if amount >= 10
    tens = amount/10
    remainder = amount%10
  elsif amount >= 5
    fives = 1
    remainder = amount%5
  elsif amount >= 1
    ones = amount
  end

  if remainder >= 5
    fives += 1
    ones = remainder - 5
  elsif remainder > 0
    ones = remainder
  end

  puts tens + fives + ones
end
