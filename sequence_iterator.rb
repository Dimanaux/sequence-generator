class SequenceIterator
  def initialize
    @state = [1]
  end

  def state
    @state.join
  end

  def next
    new_state = []
    i = 1
    count = 1
    while i < @state.size do
      if @state[i - 1] == @state[i] then
        count += 1
      else
        new_state << count
        new_state << @state[i - 1]
        count = 1
      end
      i += 1
    end
    new_state << count
    new_state << @state.last
    @state = new_state
  end
end

