require 'journey'



describe Journey do

  subject{ described_class.new("Fulham") }
  let(:entry_station) { double(:station) }
  let(:exit_station) { double(:station) }

  it 'journey should start' do
    expect(subject.entry_station).to eq "Fulham"
  end
  it 'should end' do
    expect(subject.finish(exit_station)).to eq exit_station
  end
  it 'should be able to complete the journey' do
    subject.finish(exit_station)
    expect(subject).to be_complete
  end
end
