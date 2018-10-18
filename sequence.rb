require './sequence_iterator.rb'

class Sequence
  def initialize(bound=16)
    @iter = SequenceIterator.new
    @bound = bound
    @sequence = []
  end
end

