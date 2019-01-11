require_relative './bike.rb'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(docked = 1, bikes = [])
     @docked = docked
     @bikes = bikes
   end

  def full?
    @docked >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @docked > 0 ? false : true
  end

  def release_bike
    if !empty?
      @docked -= 1
      bike = Bike.new
    else
      raise "No bikes available!"
    end
  end

  def dock_bike(bike)
    if !full?
      @bikes << bike
      @docked += 1
      return @bikes
    else
      raise "No room for more bikes!"
    end
  end

private :full?, :empty?
end
