require 'test/unit'
require_relative '../main/sequence.rb'

# test sequence
class TestSequence < Test::Unit::TestCase
  def setup
    @sequence = Sequence.new 11
  end

  def test_indexing
    assert_equal '1', @sequence[0]
    assert_equal '11', @sequence[1]
    assert_equal '21', @sequence[2]
    assert_equal '1211', @sequence[3]
    assert_equal '111221', @sequence[4]
    assert_equal '312211', @sequence[5]
  end

  def test_extra_indexing
    assert_equal '13112221', @sequence[6]
    assert_equal '1113213211', @sequence[7]
    assert_equal '31131211131221', @sequence[8]
    assert_equal '13211311123113112211', @sequence[9]
    assert_equal '11131221133112132113212221', @sequence[10]
  end

  def test_bound
    assert_raise do
      @sequence[11]
    end
  end
end
