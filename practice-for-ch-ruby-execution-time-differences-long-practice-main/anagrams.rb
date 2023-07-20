def first_anagram?(str1, str2)
    str1_arr = str1.split("") #n
    anagram_arr = str1_arr.permutation(str1.length).to_a #n!
    anagram_arr.include?(str2) #n
end
# total time complexity if 0(n!)

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

