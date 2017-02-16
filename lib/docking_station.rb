
class DockingStation
  attr_reader :dock_status, :bikes

  def initialize
    # @docked_bikes = 0
    @bikes = []
  end

  # def status=(new_status)
  # end
  #
  # def status("full")
  #   @status
  # end

  # def dock_status
  #   "The docking station is #{@docked_bikes}"
  # end

  def release_bike
    if @bikes.empty?
      raise "The docking station is empty."
    else
    #  @docked_bikes = false
      @bikes = @bikes.drop(1)
    end
  end

  def dock_bike(bike)
    if full? == true
      raise "The docking station is full."
    else
    #  @docked_bikes = true
      @bikes << bike
    end
  end

  private
  def full?
    if @bikes.size >= 20
      return true
    else
      false
    end
  end
end

class Bike
  # def initialize(status)
  #   @status = status
  # end

  def working?
    true
  end

  def docked?
    true
  end

  # def output
  #   p "The docking station is #{@status}"
  # end

end
