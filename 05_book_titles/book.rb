class Book
    attr_accessor :title

    def title=string
        small_words = ["a", "an", "and", "if", "or", "in", "the", "of"]
        words = string.split(" ")
    
        words.map do |word|
            word.capitalize! unless small_words.include? word
        end
        
        words[0].capitalize!
        @title = words.join(" ")
    end
end
