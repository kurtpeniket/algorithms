#Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

def array_diff(a, b)
  result  = []
  b.each{ |e| result << e if a.include?(e) }
  result
end

p array_diff([1, 2],[1]) # => [2]
