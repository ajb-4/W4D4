
def my_min(arr)
    arr.each do |ele1| #n
        return ele1 if arr.all? {|ele2| ele2 >= ele1} #n
    end
end 
#total time complexity of O(n^2)

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def my_min2(arr) 
    min = arr[0] #1
    arr.each do |ele| #n
        min = ele if ele < min #1
    end
    return min #1
end
#total time complexity of O(n)

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min2(list)  # =>  -5

def largest_contiguous_subsum(arr) 
    new_arr = [] #1
    (0...arr.length).each do |i| #n
        (0...arr.length).each do |j| #n
            if j >= i 
                new_arr << arr[i..j] #n
            end
        end
    end
    largest_sum = arr[0] #1
    p new_arr
    new_arr.each do |sub_arr| #n
        largest_sum = sub_arr.sum if sub_arr.sum > largest_sum #n
    end
    return largest_sum #1
end
#total time complexity of O(n^3)
list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
        
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])