number = gets.chomp.to_i
phone_book = Hash.new
search_results = []

number.times do
  command = gets.chomp
  splitted_command = command.split
  phone = splitted_command[1]

  if command.include?("add")
    name = splitted_command[2]
    phone_book[phone] = name

  elsif command.include?("del")
    phone_book.delete(phone)

  elsif command.include?("find")
    res = phone_book[phone].nil? ? 'not found' : phone_book[phone]
    search_results << res
  else
    next
  end
end

puts search_results
