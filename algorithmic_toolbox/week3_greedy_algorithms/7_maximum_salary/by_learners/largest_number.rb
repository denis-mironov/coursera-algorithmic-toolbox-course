if __FILE__ == $0
  quantity = gets.chomp.to_i
  numbers_str = gets.chomp.split
  numbers_int = numbers_str.map{|el| el.to_i}

  final_number = ""

  while 0 < numbers_str.length do
    max = numbers_str.select{|el| el[0].to_i}.max
    max_decimal = max.to_i.digits.last
    collection = numbers_str.select{|str| str[0] == max_decimal.to_s}
    tens_and_hundreds = []
    collection.each do |el|
      if el.size == 1
        final_number << el
        numbers_str.delete(el)
      else
        tens_and_hundreds << el
      end
    end.compact

    while 0 < tens_and_hundreds.length
      max_tens = ''
      tens_and_hundreds.each do |el|
        if max_tens == ''
          max_tens = el
        else
          if max_tens.size == el.size
            max_tens = el.to_i > max_tens.to_i ? el : max_tens
          else
            if el[0..1].to_i == max_tens[0..1].to_i
              if el[-1].to_i >= max_tens[-1].to_i
                max_tens = el
              end
            elsif el[0..1].to_i > max_tens[0..1].to_i
              max_tens = el
            end
          end
        end

        final_number << max_tens
        tens_and_hundreds.delete_at(tens_and_hundreds.index(el))
        numbers_str.delete(el)
      end
      break if tens_and_hundreds.empty?
    end
  end
  puts final_number
end