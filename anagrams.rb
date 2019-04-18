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

# 0(n**2)   Quadratic       MUCH FASTER (than factorial)


def third_anagram?(string_1, string_2)

    string_1.chars.sort.join == string_2.chars.sort.join

end

#0(n * log(n)) linearithmic time

def fourth_anagram?(string_1, string_2)
    return false unless string_1.length == string_2.length
    str1_hash = Hash.new(0)
    str2_hash = Hash.new(0)
    string_1.each_char do |char|
        str1_hash[char] += 1
    end
    string_2.each_char do |char|
        str2_hash[char] += 1
    end
    # str1_hash.sort_by{|k, _| k} == str2_hash.sort_by{|k, _| k}

    str1_hash.each_key do |k|
        return false unless str1_hash[k] == str2_hash[k]
    end
    true
end

#O(n) Linear Time

def bonus_anagram?(string_1, string_2)
    hash = Hash.new
    (0...string_1.length).each do |idx|
        hash[string_1[idx]] = string_2[idx]
    end

    hash.sort_by {|k, _| k } == hash.sort_by {|_, v| v}
    # string_1.each_char do |char_1|
    #     string_2.each_char do |char_2|

    #     end
    # end

end

