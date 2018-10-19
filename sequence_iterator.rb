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
      if @state[i - 1] == @state[i] then
        count += 1
      else
        new_state << count
        new_state << @state[i - 1]
        count = 1
      end
    end
    new_state << count
    new_state << @state.last
    @state = new_state
  end
end

