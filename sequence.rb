require './sequence_iterator.rb'

# stores numbers from sequence, limits SequenceIterator
class Sequence
  def initialize(bound = 16)
    @iter = SequenceIterator.new
    @bound = bound
    @sequence = [@iter.state]
  end

  def [](index)
    raise "Index #{index} is out of bound #{@bound}!" unless index < @bound

    ensure_length index
    @sequence[index]
  end

  def ensure_length(length)
    return false if @sequence.size > length

    @iter.next
    @sequence << @iter.state
    ensure_length length
  end
end

