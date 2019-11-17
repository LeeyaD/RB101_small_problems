# UNDERSTAND THE PROBLEM
# Modify method from previous exercise to exclude non-letters when
# determining word size

# CODE

def word_sizes(words)
  hash = {}
  
  words.split.each do |word|
    word.gsub!(/\W/, "")
    if hash.has_key?(word.size)
      hash[word.size] += 1
    else
      hash[word.size] = 1
    end
  end

  hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}