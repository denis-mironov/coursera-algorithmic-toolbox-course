if __FILE__ == $0
  distance           = gets.chomp.to_i
  full_tank_distance = gets.chomp.to_i
  stations           = gets.chomp.to_i
  stations_distance  = gets.chomp.split

  stations_distance << 0 << distance
  sorted_distance = stations_distance.map{|distance| distance.to_i}.sort

  if full_tank_distance >= distance
    puts 0
    return
  end

  refills = 0
  fuel_left = full_tank_distance

  loop do
    break if sorted_distance[1] == nil
    diff = sorted_distance[1] - sorted_distance[0]

    if diff > full_tank_distance
      refills = -1
      break

    elsif diff <= fuel_left
      fuel_left -= diff
      sorted_distance.delete_at(0)

    elsif diff >= fuel_left
      refills += 1
      fuel_left = full_tank_distance
      fuel_left -= diff
      sorted_distance.delete_at(0)
    end
  end

  puts refills
end
