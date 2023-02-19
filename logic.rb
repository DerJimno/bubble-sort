# def bubble_sort(array)
#   array.each_with_index do |number1, index1|
#     array.each_with_index do |number2, index2|
#       if  number1 > number2 && index2 > index1
#         number1 = number2
#         array[index1], array[index2] = array[index2], array[index1]
#       end
#     end
#   end
#   p array
# end

# def bubble_sorts(array)

#   array.each_with_index do |num, index|
#     num_one = num
#     num_two = array[index + 1]
#     if num_one.to_i > num_two.to_i
#       num_one = num_two
#       num_two = num
#       p "num one: #{num_one}"
#       p "num two: #{num_two}"
#     end
#   end
#   p array
# end

def bubble_sorts(array)
  (array.length - 1).times do
    array.each_with_index do |num, index|
      if array[index + 1] != nil && num > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end
  p array
end
# bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]
bubble_sorts([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]