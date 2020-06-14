fib_n = gets.chomp.to_i
if fib_n == 0
  puts 0
  return
end

a = 0
b = 1
c = a+b

(fib_n - 1).times do
  a = b.to_s[-1].to_i
  b = c.to_s[-1].to_i
  c = (a+b).to_s[-1].to_i
end

puts b.to_s[-1].to_i
