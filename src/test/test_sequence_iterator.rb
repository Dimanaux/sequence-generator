require_relative '../main/sequence_iterator.rb'
require 'test/unit'

# tests SequenceIterator
class TestSequenceIterator < Test::Unit::TestCase
  def setup
    @iter = SequenceIterator.new
  end

  def test_iter
    assert_equal '1', @iter.state

    @iter.next
    assert_equal '11', @iter.state

    @iter.next
    assert_equal '21', @iter.state

    @iter.next
    assert_equal '1211', @iter.state

    @iter.next
    assert_equal '111221', @iter.state
    
    @iter.next
    assert_equal '312211', @iter.state
  end
end

