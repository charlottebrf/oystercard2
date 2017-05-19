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

  describe '#started?' do
    it 'knows when a journey has been started when an entry station has been given but no exit station given' do
      station = Station.new("Fulham", 2)
      station2 = Station.new
      journey = Journey.new(station, station2)
      expect(journey.started?).to eq true
    end
    it 'knows when a journey has not been started when no entry or exit station given' do
      station = Station.new
      station2 = Station.new
      journey = Journey.new(station, station2)
      expect(journey.started?).to eq false
    end
    it 'knows when a journey has not been started when no exit station given but entry station given' do
      station = Station.new
      station2 = Station.new("Brixton", 2)
      journey = Journey.new(station, station2)
      expect(journey.started?).to eq false
    end
  end

  describe '#ended?' do
    it 'knows when a journey has been ended when an exit station has been given but no entry station given' do
      station = Station.new
      station2 = Station.new("Brixton", 2)
      journey = Journey.new(station, station2)
      expect(journey.ended?).to eq true
    end
    it 'knows when a journey has not been ended when no entry or exit station given' do
      station = Station.new
      station2 = Station.new
      journey = Journey.new(station, station2)
      expect(journey.ended?).to eq false
    end
    it 'knows when a journey has not been ended when an entry station given but no exit station given' do
      station = Station.new("Fulham", 2)
      station2 = Station.new
      journey = Journey.new(station, station2)
      expect(journey.ended?).to eq false
    end
  end


end
