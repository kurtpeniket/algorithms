def louchebem_word(str)
  if str.length > 1
    suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
    res = ''
    arr = []

    str.split('').each_with_index { |c, i| c =~ /[aeiou]/ ? arr << i : nil }

    res = "l#{str[arr[0]..-1]}#{str[arr[0] -1]}#{suffix.sample}"
    vres = "l#{str[arr[0]..-1]}#{suffix.sample}"

    str[0] =~ /[aeiou]/ ? vres : res
  else
    str
  end
end

def louchebem(sentence)
  res = []
  sentence.split(' ').each { |w| res << louchebem_word(w) }
  res.join(' ')
end

p louchebem('chat, fou!')
