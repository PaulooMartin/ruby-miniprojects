def caesar_cipher(str, key)
  caesar_key = key % 26
  old_string = str.split('')

  new_string =
    old_string.collect do |letter|
      case true
      when letter.upcase == letter.downcase
        new_letter = letter
      when letter.ord >= 'a'.ord
        old_letter_placement = letter.ord % 'a'.ord
        new_letter_placement = old_letter_placement + caesar_key
        new_letter_ascii = (new_letter_placement % 26) + 'a'.ord
        new_letter = new_letter_ascii.chr
      else
        old_letter_placement = letter.ord % 'A'.ord
        new_letter_placement = old_letter_placement + caesar_key
        new_letter_ascii = (new_letter_placement % 26) + 'A'.ord
        new_letter = new_letter_ascii.chr
      end
      new_letter
    end

  new_string.join('')
end
