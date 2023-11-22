def substrings(string, arr)
    string_arr = string.downcase.split(" ")
    result = Hash.new
    #check each word in dictionary array if word is included in [string]
    arr.each do |word|
        string_arr.each do |item|

            if item.include?(word)
                if result[word]
                    result[word] = result[word] + 1
                else
                    result[word] = 1
                end
            end
        end
    end
    #if word is included, add word string as key then add tally count as value
    #after checking all words return hash
    result
end