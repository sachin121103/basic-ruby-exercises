dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
    result = Hash.new(0)
    words_lowercase = words.downcase

    dictionary.each do |word|
        match = words_lowercase.scan(word)
         puts match
        len = match.length
        puts len

        if len > 0
            result[word] = len
        end
    end

    return result
end

puts(substrings("Howdy partner, sit down! How's it going?", dictionary))