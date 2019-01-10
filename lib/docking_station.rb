require_relative './bike.rb'

class DockingStation
  # attr_reader :docked, :capacity
  attr_reader :bikes
  # test should return 0

  # return a bike

  def initialize(docked = 0, bikes = [])
     @docked = docked
     @bikes = bikes
     # @capacity = capacity
   end

  def release_bike
    @docked -= 1
    bike = Bike.new
  end

  def dock_bike(bike)
    @bikes << bike
    @docked += 1
    return @bikes
  end

end

#
# def release_bike(1)
#   return 0
# end
#
# def dock_bike(1)
#   return 1
# end
#
#
# def print_name
#   puts "hello world"
# end
#
# def print_name(name)
#   puts "#{name}
# end
