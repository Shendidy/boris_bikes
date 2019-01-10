require_relative './bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize(docked = 1, bikes = [], capacity = 10)
     @docked = docked
     @bikes = bikes
     @capacity = capacity
   end

  def release_bike
    if @docked > 0
      @docked -= 1
      bike = Bike.new
    else
      raise "No bikes available!"
    end
  end

  def dock_bike(bike)
    if @docked != @capacity
      @bikes << bike
      @docked += 1
      return @bikes
    else
      raise "No room for more bikes!"
    end
  end

end
