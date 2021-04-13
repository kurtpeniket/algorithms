def louchebem(str)
  arr = []
  str.split('').each do |c| 
    if c =~ /[aeiou]/
      arr.push(c)
    end
  end
  arr
end

p louchebem('patron')
