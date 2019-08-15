# represents single number from sequence
class SequenceIterator
  def initialize
    @state = [1]
  end

  def state
    @state.join
  end

  def next
    new_state = []
    count = 1
    @state.each_cons(2) do |prev, curr|
      if prev == curr
        count += 1
      else
        new_state << count << prev
        count = 1
      end
    end
    new_state << count << @state.last
    @state = new_state
  end
end
