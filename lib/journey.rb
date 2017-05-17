class Journey

  attr_reader :entry_station, :complete, :exit_station

  MINIMUM_FARE = 1
  PENALTY_FARE = 6

  def initialize(entry_station = nil)
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
    return PENALTY_FARE if penalty?
    MINIMUM_FARE
  end

  private

  def penalty?
    exit_station == nil || entry_station == nil

  end

end
