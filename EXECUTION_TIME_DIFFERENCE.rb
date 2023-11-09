def my_min(arr) # O(n^2)
    sorted = true 
    while sorted 
        sorted = false 
        (0...arr.length - 1).each do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                sorted = true 
            end
        end
    end
    arr[0]
end

       
list = [0, 3, 5, 4, -5, 10, 1, 90]
p my_min(list) #=> -5

def my_min_quick(arr)         #O(n) - linear
    smallest = arr.first
    arr.each do |ele|
        if ele < smallest
            smallest = ele
        end 
    end 
    smallest
end


