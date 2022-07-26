def bubble_sort(array)
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
# => [0, 2, 2, 3, 4, 78]