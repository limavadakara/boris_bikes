require 'docking_station'
describe DockingStation do
  it 'should respond to release_bike command' do
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to(:release_bike)
  end
end
