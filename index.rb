$MORSE_CODE_TO_LETTER = {
   '.-' => 'a',
   '-...'=> 'b',
   '-.-.' => 'c',
   '-..' => 'd',
   '.' => 'e',
   '..-.'=> 'f',
   '--.'=> 'g',
   '....'=> 'h',
   '..'=>'i',
   '.---'=>'j',
   '-.-'=>'k',
   '.-..'=>'l',
   '--'=>'m',
   '-.'=>'n',
   '---'=>'o',
   '.--.'=>'p',
   '--.-'=>'q',
   '.-.'=>'r',
   '...'=>'s',
   '-' => 't',
   '..-' => 'u',
   '...-' => 'v',
   '.--' => 'w',
   '-..-'=>'x',
   '-.--'=>'y',
   '--..' => 'z'
}

def decode_char(input)
   return "#{$MORSE_CODE_TO_LETTER[input].upcase}"
end

def decode_word(input)
   arrayOfCodes = input.split(' ')
   decodedString =[]
    arrayOfCodes.each do |element|
      decodedString.push(decode_char(element))
    end
   return decodedString.join('').upcase
end

def decode(input)
   arrayOfWords= input.split('   ')
   decodedString =[]
    arrayOfWords.each do |element|
      decodedString.push(decode_word(element))
    end
   puts decodedString.join(' ').upcase
end


puts decode_char (".-")
puts decode("-- -.--   -. .- -- .")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
