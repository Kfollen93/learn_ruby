#write your code here
def translate(string)
    vowels = ['a','e','i','o','u']
    translated_string = string.split.collect do |word|
        while !vowels.include?(word[0])
            if word[0..1] == 'qu'
                word = word[2..word.length - 1] + word[0..1]
            else
                word = word[1..word.length - 1] + word[0]
            end
        end
        word = word + 'ay'
    end
    translated_string.join(' ')
end
