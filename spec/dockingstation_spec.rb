require 'docking_station'
describe DockingStation do
  dockingstation = DockingStation.new
  it 'should respond to release_bike command' do
    expect(dockingstation).to respond_to(:release_bike)
  end
end
