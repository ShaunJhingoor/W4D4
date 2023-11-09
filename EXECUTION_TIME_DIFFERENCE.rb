def my_min(arr) # O(n^2): quadratic
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


# list = [0, 3, 5, 4, -5, 10, 1, 90]
# p my_min(list) #=> -5

def my_min_quick(arr)         #O(n): linear
    smallest = arr.first
    arr.each do |ele|
        if ele < smallest
            smallest = ele
        end 
    end 
    smallest
end


#whole thing is O(n^2): quadratic
def largest_contiguous_subsum_long(list_b) #O(n): linear
    another_arr = [] 
    sub_arrays = sub_arrays(list_b)
    sub_arrays.each do |array|
        another_arr << array.sum
    end 
    another_arr.max
end
# helper function:
def sub_arrays(list) #O(n^2)
    arr = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            arr << list[i..j].to_a
        end 
    end 
    arr 
end 

def largest_contiguous_subsum(list) #O(n): linear
    current_sum =0 
    largest_sum = list.first
    list.each do |ele|
        current_sum += ele 
        largest_sum = current_sum if largest_sum < current_sum
    end
    largest_sum
end


