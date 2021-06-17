def evaluate(a, op, b)
  ops  = {
    '+' => ->(x, y) { x + y },
    '-' => ->(x, y) { x - y },
    '*' => ->(x, y) { x * y }
  }
  ops[op].call(a, b)
end

def get_maximum_value(numbers, operations)
  evaluate(2, '*', 2)
end

if __FILE__ == $0
  s = gets.chomp.bytes.to_a
  numbers = s.each_slice(2).map { |slice| slice.first - "0".bytes.first }
  operations = s.drop(1).each_slice(2).map(&:first).map(&:chr)
  puts get_maximum_value(numbers, operations)
end
