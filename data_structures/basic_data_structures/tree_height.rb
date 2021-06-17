number = gets.chomp.to_i
given_nodes_str = gets.chomp.split
given_nodes = given_nodes_str.map{|el| el.to_i}
structure = {}

# puts "given_nodes = #{given_nodes}"
for index in (0...number) do
  node = given_nodes[index]
  # puts "index = #{index}"
  # puts "node = #{node}"
  if structure.empty?
    structure[node] = [index]
  else
    if structure.keys.include?(node)
      structure.keys.each do |key|
        if key == node
          structure[key] << index
        end
      end
    else
      structure[node] = [index]
    end
  end
end

structure.values.each do |value|
  siblings = []
  if value.length > 1
    value.each do |nod|
      siblings << nod if structure.keys.include?(nod)
    end
  end

  if siblings.length > 1
    siblings[0...siblings.length - 1].each{|sibl| structure.delete(sibl)}
  end
end

puts structure.values
puts "------------------------------------------------"
puts structure.keys
