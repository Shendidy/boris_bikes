require 'docking_station'

describe DockingStation do
#subject(:instance) {described_class.new}

  it {is_expected.to respond_to :release_bike}

  it "Releases a new bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
    #expect(instance.release_bike.working?).to eq true
  end
end
