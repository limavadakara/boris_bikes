require 'docking_station'
describe DockingStation do
  dockingstation = DockingStation.new
  it 'should respond to release_bike command' do
    expect(dockingstation).to respond_to(:release_bike)
  end


  it 'should return a bike when asked to release a bike' do
    expect(dockingstation.release_bike).to be_a Bike  
  end
end
