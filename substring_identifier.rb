require 'pry'

sentence = 'go good apples'
dictionary = ['go', 'good', 'app', 'apple', 'apples']

def sentence_splitting(sentence)
  split_sentence = sentence.split(/ /)
  split_sentence.map do |word|
    word.split(//)
  end
end

def dictionary_splitting(dictionary)
  dictionary.map do |string|
    string.split(//)
  end
end

def word_checking(string, substring)
found_letters = []
  substring.each do |substring_value|
    string.each do |string_value|
      if substring_value == string_value
        
        found_letters << substring_value
        break
      end
    end
  end
  found_letters.join()
end

def string_checking(split_sentence, split_dictionary)
  found_strings = []
  split_dictionary.map do |string|
      if split_sentence.any?(string)
          found_strings << string.join()
      end
    p found_strings
  end
end



split_sentence = sentence_splitting(sentence)
split_dictionary = dictionary_splitting(dictionary)

substring = 'apple'.split(//)
string = 'apples'.split(//)



#string_checking(split_sentence, split_dictionary)
#p word_checking(string, substring)
#p split_dictionary
#p sentence_splitting(sentence)
#p dictionary_splitting(dictionary)

