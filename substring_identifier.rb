require 'pry'

sentence = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def split_sentence_string(sentence)
  split_sentence = sentence.split(/ /)
  split_sentence.map do |word|
    word.split(//)
  end
end

def split_dic_array(dictionary)
  dictionary.map do |string|
    string.split(//)
  end
end

def check_word(string, substring)
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
  split_dictionary.each do |dic_substring|
    split_sentence.each do |sentence_string|
      found_strings << check_word(sentence_string, dic_substring)
    end
  end
  found_strings.reject{ |string| string.empty? }
end

def check_found_words_against_substring(unchecked_words, dictionary)
  found_words = []
  unchecked_words.each do |unchecked_string|
    dictionary.each do |dictionary_string|
      if dictionary_string == unchecked_string
        found_words << unchecked_string
      end
    end
  end
  found_words
end

def add_found_words_to_hash(all_found_words)
  final_hash = 0
  all_found_words.reduce(Hash.new(0)) do |result, word|
    result[word] += 1
    final_hash = result
  end
  final_hash
end


split_sentence = split_sentence_string(sentence)
split_dictionary = split_dic_array(dictionary)
unchecked_words = string_checking(split_sentence, split_dictionary)
all_found_words = check_found_words_against_substring(unchecked_words, dictionary)



#=== Tests Below Here ===

p add_found_words_to_hash(all_found_words)
#substring = 'app'.split(//)
#string = 'apples'.split(//)
#check_found_words_against_substring(unchecked_words, dictionary)
#p string_checking(split_sentence, split_dictionary)
#p check_word(string, substring)
#p split_dictionary
#p sentence_splitting(sentence)
#p dictionary_splitting(dictionary)
#p unchecked_words

