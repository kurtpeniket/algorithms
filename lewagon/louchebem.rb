
def louchebem_word(str)
  suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"].sample
  res = ''
  arr = []

  return str if str.length == 1

  if str[0] =~ /[aeiou]/
    "l#{str}#{suffix}"
  else
    vowel_index = str.chars.index { |c| c =~ /[aeiou]/ }
    start = str[0...vowel_index]
    ending = str[vowel_index...str.length]
    "l#{ending}#{start}#{suffix}"
  end
end

def louchebemize(sentence)
  res = []
  words = sentence.split(/\b/) 

  words.each do |w| 
    if w =~ /\W/
      res << w
    else
      res << louchebem_word(w)
    end
  end
  res.join
end

