require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes to release" if @bikes.empty?
    @bikes.first 
  end

  def dock(bike)
    @bikes << bike
  end

end
