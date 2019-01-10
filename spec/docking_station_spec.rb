require 'docking_station'

describe DockingStation do
#subject(:instance) {described_class.new}

  it {is_expected.to respond_to :release_bike}

  it "Releases a new bike" do
    bike1 = subject.release_bike
    expect(bike1).to be_working
    #expect(instance.release_bike.working?).to eq true
  end

  it {is_expected.to respond_to :dock_bike}

  it {is_expected.to respond_to(:dock_bike).with(1).argument}

  it "Checks after docking the bike that it's been docked" do
    expect(subject.dock_bike("bike1")).to eq (["bike1"])
  end
end

describe DockingStation do
  subject(:instance) {described_class.new(0,[])}

    it "Should raise an error" do
      bike2 = instance.release_bike
      expect{bike2}.to raise_error(RuntimeError)
    end
end
