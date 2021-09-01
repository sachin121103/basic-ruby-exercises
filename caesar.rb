# Implementation of Caesar Cipher
# Parameters are the input string and the shift value
# Return value should only be the modified string

#Points to remember
# It should wrap Z -> A
# Keep the same case of letters, i.e. Caps first letter or whatever

# require 'pry'

def caesar_cipher(message, shift_key)
    result = " "
    message.each_char do |letter|
        if letter.ord.between?(65,90) || letter.ord.between?(97, 122)
            final_code = letter.ord + shift_key

            final_code -= 26 if (final_code > 91 && letter.ord < 91) || final_code > 122
            result += final_code.chr
            else
                result += letter
        end
    end
    return result
end
  
puts (caesar_cipher('What a string!', 5))
