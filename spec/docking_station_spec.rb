require 'docking_station'

describe DockingStation do
subject(:instance) {described_class.new}

  it {is_expected.to respond_to :release_bike}

  it "Releases a new bike" do
    expect(instance.release_bike.working?).to eq ("I'm a new bike!")
  end
end
