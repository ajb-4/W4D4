
def my_min(arr)
    arr.each do |ele1| #n
        return ele1 if arr.all? {|ele2| ele2 >= ele1} #n
    end
end 
#total time complexity of O(n^2)

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5