
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

#   Time complexity = 0(n ** 2) for my_min_slow(list)

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

# Time complexity = 0( n )  for my_min_fast(list)