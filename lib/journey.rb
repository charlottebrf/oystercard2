class Journey

  attr_reader

  PENALTY_FARE = 6

  def initialize
    @journey = []
  end

  def complete?
  end

  def fare
    PENALTY_FARE
  end

  def finish(exit_station)
    # exit_station = Station.new("Fulham", 2)
    @journey << exit_station
    self
  end

end
