class Machine

  def initialize(states)
    @states = states
    @state = states[0]
  end

#  attr_reader :state

  def state
    return @state
  end

  def state= (value)
    return @state = value
  end

#attr_accessor :states
  def states= (value)
    return @states = value
  end

  def states
    return @states
  end

  attr_accessor :events

  def trigger (event)
    @state = (events[event][:to]) if state == events[event][:from]
  end
end