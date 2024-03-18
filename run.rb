def custom_reduce(array, default=nil)
  counter = default.nil? ? 1 : 0
  accumulator = default.nil? ? array[0] : default

  while counter < array.size
    # p [counter, accumulator, array[counter]]

    result = yield(accumulator, array[counter])
    if result.nil?
      raise StandardError, 'Block returned nil'
    else
      accumulator = result
    end
    counter += 1
  end

  accumulator
end


array = [1, 2, 3, 4, 5]

p custom_reduce(array) { |acc, num| acc + num }                    # => 15
p custom_reduce(array, 10) { |acc, num| acc + num }                # => 25
# p custom_reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
p custom_reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p custom_reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
