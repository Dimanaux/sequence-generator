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
    (1...@state.size).each do |i|
      if @state[i - 1] == @state[i]
        count += 1
      else
        new_state += [count, @state.last]
        count = 1
      end
    end
    new_state += [count, @state.last]
    @state = new_state
  end
end

