require 'docking_station'
describe DockingStation do
  it 'should respond to release_bike command' do
    expect(subject).to respond_to(:release_bike)
  end


  it 'should return a Bike when asked to release bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_a Bike
  end

  it 'should return a working bike when asked to release bike' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end

  it 'docks a bike' do
    bike = Bike.new
    expect {subject.dock(bike)}.not_to raise_error
  end

  it 'displays all the bikes it has docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  it 'raises an error when there is no bike to release' do
    expect {subject.release_bike}.to raise_error
  end

  it 'raises an error when docking a bike onto it if it is full' do
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock(Bike.new)
    end
    expect {subject.dock(Bike.new)}.to raise_error
  end

  it 'creates a docking station with a specified capacity' do
    dockingstation = DockingStation.new(10)
    10.times do
      dockingstation.dock(Bike.new)
    end
    expect {dockingstation.dock(Bike.new)}.to raise_error
  end

end
