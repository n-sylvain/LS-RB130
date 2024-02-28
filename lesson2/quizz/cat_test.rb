require 'minitest/autorun'

require_relative 'cat'

class CatTest < Minitest::Test
  def setup
    @kitty = Cat.new('Kitty', 5)
  end

  # def test_is_cat; end

  # def test_name
  #   assert_equal('Kitty', @kitty.name)
  # end

  # def test_miaow
  #   assert(@kitty.miaow.include?(' is miaowing.'))
  #   assert_match(/ is miaowing\./, @kitty.miaow)
  # end

  # def test_raises_error
  #   assert_raises(ArgumentError) do
  #     Cat.new
  #   end
  # end

  # def test_is_not_purrier
  #   patch = Cat.new('Patch', 5)
  #   milo = Cat.new('Milo', 3)

  #   refute(patch.purr_factor > milo.purr_factor)
  # end
end
