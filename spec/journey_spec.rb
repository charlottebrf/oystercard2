require 'journey'

describe Journey do

  subject(:journey) { described_class.new }
  let(:station) { double :station, zone: 1 }

  it 'allows journey to start' do
    expect(journey).not_to be_complete
  end
  it 'allow for a penalty fare' do
    expect(journey.fare).to eq Journey::PENALTY_FARE
  end
  it 'returns the journey when exiting' do
    expect(journey.finish(station)).to eq journey
  end

end
