require_relative 'bike'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def empty?
    working_bikes = @bikes.select { |bike| bike.is_working == true }
    working_bikes.empty?
  end

  def full?
    @bikes.length == @capacity
  end

  def release_bike
    raise "No bikes to release" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Maximum capacity reached" if full?
    @bikes << bike
  end

  private :empty?, :full?

end
