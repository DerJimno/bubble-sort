def bubble_sort(array)
  loop do
    a = []
    array.each_with_index do |num, index|
      if array[index + 1] != nil && num > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      else a << 1
      end
    end
    a.length == array.length ? break : next
  end
  p array
end

def shoot_sort(array)
  array.each_with_index do |number1, index1|
    array.each_with_index do |number2, index2|
      if  number1 > number2 && index2 > index1
        number1 = number2
        array[index1], array[index2] = array[index2], array[index1]
      end
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78] slower

shoot_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78] faster
