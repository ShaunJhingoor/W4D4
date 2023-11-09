def first_anagrams?(str1, str2)
    chars=str1.chars
    all_possible = chars.permutation.to_a
    all_possible.map{|subs| subs.join("")}.include?(str2)
end  
p first_anagrams?("gizmo", "sally")    #=> false
p first_anagrams?("elvis", "lives")    #=> true