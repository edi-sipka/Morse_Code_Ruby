LIST = { 
  '1' => 'A',
  '2' => 'B',
  '3' => 'C',
  '4' => 'D'
}

def decode_char(char)
  LIST[char]
end
puts decode_char('4')

def decode_word(word)
  split_word = ''
  word.split.each { |n| split_word += decode_char(n) }
  split_word
end

puts decode_word('4 2')



array = ["esh", "s"]
array.each {|n| puts n}

names.select { |name| name.start_with?("S") }.map { |name| name.upcase }
