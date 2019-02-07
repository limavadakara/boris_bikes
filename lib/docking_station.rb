require_relative 'bike'

class DockingStation
  attr_reader :bikes
  @@capacity = 20

  def initialize
    @bikes = []
  end

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length == @@capacity
  end

  def release_bike
    raise "No bikes to release" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Maximum capacity reached" if full?
    @bikes << bike
  end

end
