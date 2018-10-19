require './sequence_iterator.rb'

class Sequence
  def initialize(bound=16)
    @iter = SequenceIterator.new
    @bound = bound
    @sequence = [@iter.state]
  end

  def [](index)
    if index < @bound
      self.ensure index
      @sequence[index]
    else
      raise "Index #{index} is out of bound #{@bound}!"
    end
  end

  def ensure(index)
    if @sequence.size <= index then
      @iter.next
      @sequence << @iter.state

      self.ensure index
    end
  end
end

