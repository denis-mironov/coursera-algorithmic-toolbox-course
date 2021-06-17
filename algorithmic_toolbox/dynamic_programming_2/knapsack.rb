capacity_and_number = gets.chomp.split
bars_str = gets.chomp.split

capacity = capacity_and_number[0].to_i
number = capacity_and_number[1].to_i
bars = bars_str.map{|e| e.to_i}

previous_iteration = []
results = {}

bars.each do |bar|
  for weight in 0..capacity do
    previous_result = results[weight]

    if bar <= weight
      previous_max = previous_iteration.last[weight - bar] unless previous_iteration.empty?

      if previous_result
        if previous_max + bar <= previous_result
          results[weight] = previous_result
        elsif previous_max + bar <= weight
          results[weight] = previous_max + bar
        elsif previous_max + bar >= weight
          results[weight] = previous_result
        end
      else
        results[weight] = bar
      end
    else
      results[weight] = previous_result ? previous_result : 0
    end
  end
  previous_iteration << results.dup
end

puts results.values.max
