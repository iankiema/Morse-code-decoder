class MorseCodeDecoder
    MORSE_CODE_DICT = {
      'A' => '.-', 'B' => '-...',
      'C' => '-.-.', 'D' => '-..', 'E' => '.',
      'F' => '..-.', 'G' => '--.', 'H' => '....',
      'I' => '..', 'J' => '.---', 'K' => '-.-',
      'L' => '.-..', 'M' => '--', 'N' => '-.',
      'O' => '---', 'P' => '.--.', 'Q' => '--.-',
      'R' => '.-.', 'S' => '...', 'T' => '-',
      'U' => '..-', 'V' => '...-', 'W' => '.--',
      'X' => '-..-', 'Y' => '-.--', 'Z' => '--..',
      '0' => '-----', '1' => '.----', '2' => '..---',
      '3' => '...--', '4' => '....-', '5' => '.....',
      '6' => '-....', '7' => '--...', '8' => '---..',
      '9' => '----.',
  }.freeze

  def self.decode_char(morse_char)
    MORSE_CODE_DICT.key(morse_char)
  end
 def self.decode_word(morse_word)
    morse_word.split(' ').map {|char| decode_char(char)}.join
  end

  def self.decode_message(morse_message)
    morse_words = morse_message.split('   ')
    morse_words.map { |word| decode_word(word) }.join(' ')
  end
end

morse_message = ".- -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = MorseCodeDecoder.decode_message(morse_message)

puts decoded_message
