require 'docking_station'

describe DockingStation do
  it {expect(DockingStation.release_bike).to eq("Released!")}
end
