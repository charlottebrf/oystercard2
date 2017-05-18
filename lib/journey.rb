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
    raise "You have already touched in" if @journey.include? entry_station
    @journey << entry_station
    self
  end

  def finish(exit_station)

    @journey << exit_station
    self
  end

end
