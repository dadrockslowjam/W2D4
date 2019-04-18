
def my_min_slow(list)
    min = nil
    (0...list.length - 1).each do |idx_1|
       min = list[idx_1] if min.nil?
        (idx_1 + 1...list.length).each do |idx_2|
            min = list[idx_2] if list[idx_2] < min
        end
    end
    min
end

#   Time complexity = 0(n ** 2) for my_min_slow(list)  Quadratic Time

def my_min_fast(arr)
    min = nil
    arr.each do |ele|
        if min.nil?
            min = ele
        elsif ele < min
            min = ele
        end

    end
    min
end

# Time complexity = 0( n )  for my_min_fast(list)  Linear Time

def sub_arrays(arr)
    sub_arrays = []
            
        (0...arr.length).each do |idx_1|
            sub_arrays << [arr[idx_1]]
            (idx_1 +1...arr.length).each do |idx_2|
                sub_array = arr[idx_1..idx_2] unless idx_1 == idx_2
                sub_arrays << sub_array #unless sub_arrays.include?(sub_array)
            end
        end
        sub_arrays
end


def sub_sum(arr)
    array = sub_arrays(arr)             #O(n**2)
                                        # +
    array.map{|arr| arr.sum}.max        #O(n**2) => 2(n**2) => 0(n**2) Quadratic time
end

# 0( n ** 2)  Quadratic Time


def sum_sum_fast(arr)
    main_sum    = arr.first
    current_sum = arr.first

    arr[1..-1].each do |el|
        current_sum += el  
        if main_sum < current_sum 
            main_sum = current_sum
        end
    end
    main_sum
end


# O(n) Linear Time