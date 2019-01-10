require_relative './bike.rb'

class DockingStation
  # attr_reader :docked, :capacity
  attr_reader :bikes
  # test should return 0

  # return a bike

  def initialize(docked = 1, bikes = [])
     @docked = docked
     @bikes = bikes
     # @capacity = capacity
   end

  def release_bike
    if @docked > 0
      @docked -= 1
      bike = Bike.new
    else
      raise "No bikes available"
    end
  end

  def dock_bike(bike)
    @bikes << bike
    @docked += 1
    return @bikes
  end

end
