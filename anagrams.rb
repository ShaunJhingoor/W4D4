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
p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

# if __FILE__ == $0
#     foo()
#     bar()
# end