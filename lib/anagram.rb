# Your code goes here!
class Anagram
    attr_reader :anagram
    attr_accessor :word 

    def initialize(word)
        @word = word
    end

    def match(anagram)
        anagram.map do |word|
            characters = word.chars
            if characters.sort == @word.chars.sort 
                @anagram = word
            else
                puts "#{word} is not an anagram of #{@word}"
            end
        end
    end
end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
puts listen.anagram