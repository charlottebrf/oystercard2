require 'station'

describe Station do
  subject(:station) { described_class.new }
  subject(:station2) { described_class.new :ParsonsGreen, 2}

  it 'gives a default of no_name if given no station name' do
    expect(station.name).to eq :no_name
  end

  it 'gives a default of no_zone if given no station zone' do
    expect(station.zone).to eq :no_zone
  end

  it 'gives a station name when a station name given' do
    expect(station2.name).to eq :ParsonsGreen
  end

  it 'gives a station zone when a station zone given' do
    expect(station2.zone).to eq 2
  end
end
