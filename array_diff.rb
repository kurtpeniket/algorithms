#Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

def array_diff(a, b)
  a.delete_if{ |e| b.include?(e) }
end

p array_diff([1, 2],[1]) # => [2]
