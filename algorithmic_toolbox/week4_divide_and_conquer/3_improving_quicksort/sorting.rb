def quicksort(array, beg_index, end_index)
  if beg_index < end_index
    temp=partition3(array,beg_index,end_index)
    l=temp[0]
    r=temp[1]
    quicksort(array,beg_index,l-1)
    quicksort(array,r+1,end_index)
  end

  array
end

def partition3(a,lo,hi)
  pivot=a[lo]
  i=lo+1
  lt=lo
  gt=hi

  while(i<=gt)
      if a[i]< pivot
          temp=a[lt]
          a[lt]=a[i]
          a[i]=temp
          lt+=1
          i+=1
      elsif a[i]>pivot
          temp=a[i]
          a[i]=a[gt]
          a[gt]=temp
          gt-=1
      else
          i+=1
      end
  end
  return lt,gt
end

if __FILE__ == $0
  arr_size = gets.chomp.to_i
  string_arr = gets.chomp.split
  array = string_arr.map{|el| el.to_i}

  sorted = quicksort(array, 0, arr_size - 1)
  sorted.each do |el|
    print el.to_s + " "
  end
end
