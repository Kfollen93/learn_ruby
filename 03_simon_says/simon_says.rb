#write your code here
def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, n=2)
    array = [word] * n
    array.join(' ')
end

def start_of_word(word, n)
    array = word.split('')
    array.shift(n).join('')
end

def first_word(str)
    "#{str.partition(" ").first}"
end

def titleize(str)
        str.capitalize!  # capitalize the first word in case it is part of the no words array
        words_no_cap = ["and", "or", "over", "to", "the", "a", "but"]
        phrase = str.split(" ").map {|word| 
            if words_no_cap.include?(word) 
                word
            else
                word.capitalize
            end
        }.join(" ")
      phrase  # returns the phrase with all the excluded words
end





