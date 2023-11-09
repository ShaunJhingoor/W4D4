def first_anagrams?(str1, str2)
    possible_combos = [] #possible combos of str1 5*5 = 25 combos
    while possible_combos.length < (str1.length * str1.length)
        anagram = ""
        i = (0...str1.length - 1)
        str1.length.times do 
            if !anagram.include?(str1[rand(i)])
                anagram += str1[i]
                possible_combos << anagram
            end
        end 
    end 
    possible_combos
end     
p first_anagrams?("gizmo", "sally")    #=> false
p first_anagrams?("elvis", "lives")    #=> true