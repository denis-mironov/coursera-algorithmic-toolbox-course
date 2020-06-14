#!/usr/bin/env ruby
# by Andronik Ordian

if __FILE__ == $0
  numbers = gets.chomp.split
  items = numbers[0].to_i
  capacity = numbers[1].to_i
  initial_capacity = numbers[1].to_i
  values_and_weight = Hash.new

  items.times do
    numbers = gets.chomp.split
    main_price = numbers[0].to_i
    weight = numbers[1].to_i
    values_and_weight[main_price.to_f/weight] = {main_price => weight}
  end

  knapsack_fullnes = 0
  main_value = 0

  loop do
    max_value = values_and_weight.keys.max
    weight = values_and_weight[max_value].values.first
    price = values_and_weight[max_value].keys.first
    # puts '-' * 50
    # puts "price = #{price}"
    # puts "weight = #{weight}"
    # puts "capacity = #{capacity}"

    if capacity < weight
      knapsack_fullnes += weight - (weight - capacity)
      main_value += capacity.to_f/weight * price
    elsif capacity > weight
      knapsack_fullnes += weight
      main_value += price
    else
      knapsack_fullnes += weight
      main_value += price
    end

    capacity = initial_capacity - knapsack_fullnes
    # puts "main_value = #{main_value}"
    # puts "capacity = #{capacity}"
    # puts "knapsack = #{knapsack_fullnes}"
    # puts '-' * 50
    values_and_weight.delete(max_value)
    break if knapsack_fullnes == initial_capacity
    break if values_and_weight.empty?
  end

  val = '%.4f' % main_value
  puts val
end
