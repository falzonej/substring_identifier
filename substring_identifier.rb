require 'pry'

sentence = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def split_sentence_string(sentence)
  split_sentence = sentence.split(/ /)
  split_sentence.map do |word|
    word.split(//)
  end
end

def split_dic_arr(dictionary)
  dictionary.map do |string|
    string.split(//)
  end
end

def check_word(string, substring)
found_letters = []
found_word = []
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

def check_found_words_against_substring(unchecked_words, dictionary)
  found_words = []
  dictionary.each do |unchecked_word|
    unchecked_words.each do |dictionary_word|
      if unchecked_word = dictionary_word
        found_words << unchecked_word
      end
    end
  end
end

def string_checking(split_sentence, split_dictionary)
  found_strings = []
  split_dictionary.each do |dic_substring|
    split_sentence.each do |sentence_string|
      found_strings << check_word(sentence_string, dic_substring)
    end
  end
  complete_substrings = found_strings.reject{ |string| string.empty? }.uniq
end


split_sentence = split_sentence_string(sentence)
split_dictionary = split_dic_arr(dictionary)
unchecked_words = string_checking(split_sentence, split_dictionary)


#substring = 'app'.split(//)
#string = 'apples'.split(//)

p check_found_words_against_substring(unchecked_words, dictionary)
#p string_checking(split_sentence, split_dictionary)
#p check_word(string, substring)
#p split_dictionary
#p sentence_splitting(sentence)
#p dictionary_splitting(dictionary)

