class Journey

  attr_reader :entry_station

  def initialize(entry_station)
    @entry_station = entry_station
  end

  def finish(exit_station)
    @exit_station = exit_station
  end

  def complete?
    true
  end

end
