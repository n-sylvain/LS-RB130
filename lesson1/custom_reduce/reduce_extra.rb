def reduce(array, default = nil)
  counter = 0
  accumulator = default != nil ? default : array.first

  while counter < array.size
    accumulator = yield(accumulator, array[counter])
    counter += 1
    break if counter == array.size || array.size == 1
  end

  accumulator
end

# Test cases
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']], []) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
