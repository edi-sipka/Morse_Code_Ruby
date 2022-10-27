MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# Create a method to decode a Morse code character, takes a string parameter,
# and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

def decode_char(char)
  MORSE_CODE[char]
end
puts decode_char('.-') #=> A

# Create a method to decode an entire word in Morse code, takes a string parameter,
# and return the string representation. Every character in a word will be separated by a single space
# (e.g. decode_word("-- -.--") returns "MY").

def decode_word(word)
  split_word = ''
  word.split.each { |n| split_word += decode_char(n) }
  split_word
end
puts decode_word('-- -.--') #=> MY

# Create a method to decode the entire message in Morse code, takes a string parameter,
# and return the string representation. Every word will be separated by 3 spaces (e.g.

def decode(sentence)
  words = sentence.split('   ')
  message = ''
  words.each { |n| message += "#{decode_word(n)} " }
  message
end

puts decode('-- -.--   -. .- -- .') #=> MY NAME
puts decode(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

#=> A BOX FULL OF RUBIES
