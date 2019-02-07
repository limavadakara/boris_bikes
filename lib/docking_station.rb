require_relative 'bike'

class DockingStation
  attr_reader :bikes
  @@capacity = 1

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes to release" if @bikes.empty?
    @bikes.first
  end

  def dock(bike)
    fail "Maximum capacity reached" if @bikes.length == @@capacity
    @bikes << bike
  end

end
