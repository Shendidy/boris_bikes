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

#if docked bikes = 0
describe DockingStation do
  subject(:instance) {described_class.new(DockingStation::DEFAULT_CAPACITY, 0,[])}

    it "Should raise an error" do
      expect { instance.release_bike }.to raise_error("No bikes available!")
    end
end

#if docked capacity = 2 and docked bikes = 2
describe DockingStation do
  subject(:instance) {described_class.new(DockingStation::DEFAULT_CAPACITY, DockingStation::DEFAULT_CAPACITY, ["bike1", "bike2"])}

    it "Should raise an error" do
      expect { instance.dock_bike("bike3") }.to raise_error("No room for more bikes!")
    end
end

describe DockingStation do
  context do
  subject(:instance) {described_class.new(28)}

    it "Should raise an error" do
      expect(instance.instance_variable_get(:@capacity)).to eq (28)
    end
  end
  context do
    it "Check default capacity = 20" do
      expect(subject.capacity).to eq 20
    end
  end
end
