#Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed.

def spin_word(string)
  string.split(' ')
    .each { |word|  word.reverse! if word.length >= 5}
    .join(' ')
end

p spin_word('this is a str')
