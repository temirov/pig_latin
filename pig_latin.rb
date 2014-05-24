class PigLatin
  class << self
    def translate sentence
      sentence.split(' ').map do |word|
        translate_word word
      end.join(' ')
    end
    private
      def translate_word word
        first_symbol = word.slice!(0)
        last_symbol = word.slice!(-1) if word.slice(-1).match(/[[:punct:]]/)
        word << "#{first_symbol}ay#{last_symbol}"
        word.capitalize! if first_symbol.match(/[[:upper:]]/)
        word
      end
  end
end
