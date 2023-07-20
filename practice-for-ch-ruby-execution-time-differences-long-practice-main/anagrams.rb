def first_anagram?(str1, str2)
    str1_arr = str1.split("") #n
    anagram_arr = str1_arr.permutation(str1.length).to_a #n!
    anagram_arr.include?(str2) #n
end
# total time complexity if 0(n!)

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)

    str1.each_char do |char| #n
        if str2.index(char).is_a?(Integer) #n
            str2[str2.index(char)] = ""
        else 
            return false
        end
    end
    return true if str2 == ""
    return false    
end
p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true