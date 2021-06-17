number = gets.chomp.to_i
array_str = gets.chomp.split
@array = array_str.map{|el| el.to_i}
@sifted_indexes = []

if number <= 1
  puts 0
  return
end

# def left_child_index
#   parent_index * 2 + 1
# end

# def right_child_index
#   parent_index * 2 + 2
# end

# def parent
#   @array[parent_index]
# end

# def left_child
#   @array[left_child_index]
# end

# def right_child
#   @array[right_child_index]
# end

def sift_up_nodes(child_index)
  @array[child_index], @array[@parent_index] = @array[@parent_index], @array[child_index]
  @sifted_indexes << [@parent_index, child_index]
end

def compare_nodes
  if @parent > @left_child || @parent > @right_child
    child_index_to_sift = @left_child >= @right_child ? @right_child_index : @left_child_index
    sift_up_nodes(child_index_to_sift)

    @parent_index = child_index_to_sift
    puts "parent_index = #{@parent_index}"
    puts "parent = #{@parent}"
    puts "left_child = #{@left_child}"
    puts "right_child = #{@right_child}"
  end
  # puts "array = #{@array}"
  # puts "========================================"


    # compare_nodes unless (parent <= left_child && parent <= right_child)
end

for n in 1..number do
  node = @array[-n]
  @node = node
  @i = @array.index(node)
  @parent_index = (@i - 1)/2
  @left_child_index = @parent_index * 2 + 1
  @right_child_index = @parent_index * 2 + 2
  @parent = @array[@parent_index]
  @left_child = @array[@left_child_index]
  @right_child = @array[@right_child_index]

  if @parent_index.negative?
    break
  else
    if @right_child.nil?
      if @parent > @left_child
        sift_up_nodes(@left_child_index)
      end
    else
      compare_nodes
    end
  end
end

puts @sifted_indexes.length
@sifted_indexes.each do |el|
  puts "#{el[0]} #{el[1]}"
end


# puts "i = #{i}"
# puts "@parent_index = #{@parent_index}"
# puts "parent = #{parent}"
# puts "left_child = #{left_child}"
# puts "right_child = #{right_child}"