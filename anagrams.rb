def first_anagram?(string1, string2)

    anagram_array = string1.split("").permutation(string1.length).map(&:join)
    anagram_array.include?(string2) #O(n) for line 4.  gets crushed

end

#O(n!) Factorial Time

def second_anagram?(string_1, string_2)
    string_1.each_char do |letter|
            if string_2.index(letter) != nil
                string_2.delete!(letter)
            end

    end
    string_2.empty?
end

# 0(n)   Linear Time       MUCH FASTER 