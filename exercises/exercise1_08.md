```ruby
def none?(collection)
  collection.each do |item|
    return false if yield(item)
  end
  true
end

p none?([1, 3, 5, 6]) { |value| value.odd? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| false } == true



```