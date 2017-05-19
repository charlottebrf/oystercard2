require_relative 'station'

class Journey

  attr_reader :entry_station, :exit_station

  def initialize(entry_station, exit_station)
    @entry_station = entry_station
    @exit_station = exit_station
  end

  def started?
    @entry_station.name != :no_name
  end

  def ended?
    @exit_station.name != :no_name
  end

end
