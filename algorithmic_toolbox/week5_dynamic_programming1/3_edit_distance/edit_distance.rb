str1 = gets.chomp
str2 = gets.chomp
str2_len = str2.length

distance = (0..str2_len).to_a
x = nil

str1.each_char.with_index do |char1, ind1|
  char1_val = ind1 + 1

  str2.each_char.with_index do |char2,ind2|
    cost = (char1 == char2) ? 0 : 1
    x = [
      distance[ind2+1] + 1, # insertion (вставка)
      char1_val + 1,        # deletion (удаление)
      distance[ind2] + cost # substitution (замена)
    ].min

    distance[ind2] = char1_val
    char1_val = x
  end

  distance[str2_len] = x
end

puts x