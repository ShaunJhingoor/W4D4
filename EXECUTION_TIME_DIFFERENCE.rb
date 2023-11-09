def my_min(arr)         #O(n) - linear
    smallest = arr.first
    arr.each do |ele|
        if ele < smallest
            smallest = ele
        end 
    end 
    smallest
end

list = [0, 3, 5, 4, -5, 10, 1, 90]
p my_min(list) #=> -5

