def proc_to_block(proc)
  p proc.class
  p proc
  p [1, 2, 3, 4, 5].any?(proc) # => #any? expects a block.
end

def block_to_proc(&block)
  yield # => the block is still there to be yielded to
  block.call # => but the unary & operator has converted the block into a proc object also
end

block_to_proc { puts "from a block"} # => from a block
                                     # => from a block
my_proc = proc {|n| n > 4}
proc_to_block(my_proc) # => Proc
                       # => true
