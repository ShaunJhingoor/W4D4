#phase-1


def first_anagram?(str1, str2)
    chars=str1.chars
    all_possible = chars.permutation.to_a
    all_possible.map{|subs| subs.join("")}.include?(str2)
end  
# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


#phase-2
def second_anagram?(str1, str2)
    return false unless str1.length == str2.length
    array = []
    str2.each_char { |char2| array << char2 }
    str1.each_char.with_index do |char, i|     
        if array.index(char) != nil
            ind = array.index(char) 
            array.delete_at(ind)
        end 
    end 
    array.empty?
end 
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
    str1.chars.sort == str2.chars.sort 
end
# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1,str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    str1.each_char{|char| hash1[char] += 1}
    str2.each_char{|char| hash2[char] += 1}
    hash1 == hash2 
end
# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

def bonus?(str1, str2)
    hash = Hash.new(0)
    str1.each_char{|char| hash[char] += 1}
    str2.each_char{|char| hash[char] -= 1}
    hash.empty? 
end
# p bonus?("gizmo", "sally")    #=> false