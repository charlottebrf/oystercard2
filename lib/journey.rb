class Journey

  PENALTY_FARE = 6

  def initialize
    @journey = []
  end

  def complete?
  end

  def fare
    PENALTY_FARE
  end

  def start(entry_station)
    fail "You have already touched in" if @journey.count > 1
    @journey << entry_station
    self
  end

  def finish(exit_station)
    fail "You have already touched out" if @journey.count > 1
    @journey << exit_station
    self
  end

end
