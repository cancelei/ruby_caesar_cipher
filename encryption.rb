def caesar_cipher(str, shift_factor)
  shifted_str = ""

  str.each_char do |char|
    if char.match?(/[A-Za-z]/) # Check if the character is a letter
      base = char.ord < 91 ? 65 : 97 # Determine the ASCII base for uppercase or lowercase
      # Shift the character and wrap around the alphabet
      shifted_char = ((char.ord - base + shift_factor) % 26) + base
      shifted_str += shifted_char.chr
    else
      # If it's not a letter, leave it as is
      shifted_str += char
    end
  end

  shifted_str
end

# You can change the string and shift factor here
puts caesar_cipher("AAAAWhat a string!", 5)
# Output: "Bmfy f xywnsl!"
