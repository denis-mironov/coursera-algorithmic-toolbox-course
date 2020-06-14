number = gets.chomp.to_i
stack = []
max = []
max_list = []

current_max = 0
for action in 1..number do
  action = gets.chomp
  if action.include?("push")
    amount = action.split(" ").last.to_i
    stack << amount
    if current_max <= amount
      current_max = amount
      max_list << current_max
    end

  elsif action.include?("pop")
    ol = stack.pop unless stack.nil?
    if ol == current_max
      max_list.pop
      current_max = max_list.last
    end

  elsif action.include?("max")
    max << current_max
  else
    break
  end
end

# puts "max_list = #{max_list}"
puts max