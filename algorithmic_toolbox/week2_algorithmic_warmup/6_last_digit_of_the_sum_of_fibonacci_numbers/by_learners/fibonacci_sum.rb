#!/usr/bin/env ruby
# by Andronik Ordian

if __FILE__ == $0

  a = gets.chomp.to_i
  b = gets.chomp.to_i

  res1 = 7
  res2 = 0
  counter = 0
  puts '--------------------------------'
  until res1 - res2 == 5 do
    counter += 1
    res1 += a
    res2 += b if counter.odd?
    puts res1 - res2
    break if counter == 50
  end

  # fib_n = gets.chomp.to_i
  # if fib_n == 0
  #   puts 0
  #   return
  # end

  # a = 0
  # b = 1
  # c = a+b
  # sum = 1

  # time_1 = Time.now
  # (fib_n - 1).times do
  #   a = b.to_s[-1].to_i
  #   b = c.to_s[-1].to_i
  #   c = (a+b).to_s[-1].to_i
  #   # sum += b
  #   # sum = sum.digits.sort.last(2).join().to_i if sum > 100
  # end
  # time_2 = Time.now

  # puts time_2 - time_1
  # puts sum
  # puts sum.to_s[-1].to_i
end
