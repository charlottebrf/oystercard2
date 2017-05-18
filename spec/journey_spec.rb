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

  it "Allows an entry station to be added" do
    expect(journey.start(station)).to eq journey
  end

  it "Will only allow one start station to be added to journey" do
    journey.start(station)
    expect {journey.start(station) }.to raise_error "You have already touched in"
  end
end
