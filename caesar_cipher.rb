# Determine whether the character is upper or lower case
def case_select(char)
    (char.ord < 91)? 65 : 97
end

# Find modulus of positive or negative number
def modulus(num)
    ((num % 26) + 26) % 26
end

def new_char(char, shift)
    
    # Discount non-alphabet characters
    if ((char.ord >= 91 && char.ord <= 96) || char.ord <= 64 || char.ord >= 123)
        return char
    end
    
    # Calculate number of the shifted character
    (modulus(char.ord - case_select(char.ord) + shift) + case_select(char.ord)).chr

end

def caesar_cipher(str, shift)

    char_codes = str.split("").map { |char| new_char(char, shift)}.join('')

    puts char_codes
end

caesar_cipher("What a string!", -5)