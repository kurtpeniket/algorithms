def count_smileys(arr)
  sum = 0
  arr.each{ |e| sum += 1 if e =~ /^[;:][-~]{0,1}[)D]/}
  return sum
end

p count_smileys([])
p count_smileys([':-)', ':~D', ''])
