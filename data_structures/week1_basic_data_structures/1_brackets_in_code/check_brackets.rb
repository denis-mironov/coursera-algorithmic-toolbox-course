string = gets.chomp

PARENS = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}
OPENING_PARENS = PARENS.keys
CLOSING_PARENS = PARENS.values

stack  = []
indexes_arr = [
  {"(" => []},
  {"[" => []},
  {"{" => []},
]
error_queue = 1

if string.size <= error_queue || CLOSING_PARENS.include?(string[0])
  puts error_queue
  return
end

string.chars.each_with_index do |char, index|
  if OPENING_PARENS.include?(char)
    stack << char
    indexes_arr.each do |h|
      if h.keys.first == char
        h[char] << index
      end
    end
  elsif CLOSING_PARENS.include?(char)
    if char == PARENS[stack.last]
      indexes_arr.each do |h|
        if h.keys.first == stack.last
          h[stack.last].pop
        end
      end
      stack.pop
    else
      error_queue += index
      break
    end
  end
end

if error_queue > 1
  puts error_queue
  return
end

if stack.empty?
  print "Success"
else
  indexes_arr.each do |h|
    if h.keys.first == stack.last
      puts h[stack.last].last + 1
    end
  end
end
