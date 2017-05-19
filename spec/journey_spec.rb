require 'journey'

describe Journey do

  it 'is initialized with an entry station' do
    station = Station.new("Fulham", 2)
    station2 = Station.new
    journey = Journey.new(station, station2)
    expect(journey.entry_station).to eq station
  end

  it 'is initialized with an exit station' do
    station = Station.new
    station2 = Station.new("Brixton", 2)
    journey = Journey.new(station, station2)
    expect(journey.exit_station).to eq station2
  end



end
