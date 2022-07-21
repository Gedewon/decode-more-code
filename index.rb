def decode_char(input)
  morse_code_to_letter = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f',
                           '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
                           '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
                           '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x',
                           '-.--' => 'y', '--..' => 'z' }
  morse_code_to_letter[input].upcase
end

def decode_word(input)
  array_of_codes = input.split
  decoded_string = []
  array_of_codes.each do |element|
    decoded_string.push(decode_char(element))
  end
  decoded_string.join
end

def decode(input)
  array_of_words = input.split('   ')
  decoded_string = []
  array_of_words.each do |element|
    decoded_string.push(decode_word(element))
  end
  puts decoded_string.join(' ')
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
