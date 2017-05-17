require 'journey'

describe Journey do

  subject{ described_class.new("Fulham") }
  let(:entry_station) { double(:station) }
  let(:exit_station) { double(:station) }
  it { is_expected.to respond_to(:fare) }

  it 'journey should start' do
    expect(subject.entry_station).to eq "Fulham"
  end
  it 'should end' do
    subject.finish(exit_station)
    expect(subject.exit_station).to eq exit_station
  end
  it 'should be able to complete the journey' do
    subject.finish(exit_station)
    expect(subject).to be_complete
  end
  it 'should return the cost of the journey(fare)' do
    expect(subject.fare).to eq Journey::MINIMUM_FARE
  end

end
