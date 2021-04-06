def rot13(string)
  hash = {a:1, b:2, c:3, d:4, e:5, f:6, g:7, h:8, i:9, j:10, k:11, l:12, m:13, n:14, o:15, p:16, q:17, r:18, s:19, t:20, u:21, v:22, w:23, x:24, y:25, z:26}

  res = string.downcase.chars.map do |c|
    if !hash[c.to_sym].nil?
      hash[c.to_sym] <= 13 ? hash[c.to_sym] + 13 : hash[c.to_sym] + 13 - 26
    else
      c
    end
  end

  res.map! { |l| l.class == Integer ? hash.key(l) : l }
  /[[:upper:]]/.match(string[0]) ? res.join('').capitalize : res.join('')
end

p rot13('Ruby is cool!')
p rot13('abc')
p rot13('test')
p rot13('Test')
