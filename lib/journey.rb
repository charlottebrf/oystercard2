class Journey

  attr_reader :entry_station, :complete, :exit_station

  MINIMUM_FARE = 1

  def initialize(entry_station)
    @entry_station = entry_station
    @complete = false
  end

  def finish(exit_station)
    @exit_station = exit_station
    @complete = true
  end

  def complete?
    @complete
  end

  def fare
    MINIMUM_FARE
  end

end
