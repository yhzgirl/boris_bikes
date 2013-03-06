class Station

  attr_reader :bikes_in_station

CAPACITY = 10 

def initialize
  @bikes_in_station = []
end

def bike_count
  @bikes_in_station.count
end

def available_bikes_count
  @bikes_in_station.count {|b| not b.broken? }
end

def repair_bikes_count
  @bikes_in_station.count {|b| b.broken? }
end

def add_bike(bike)
  @bikes_in_station << bike
end 

def release_broken_bikes
  broken_bikes = @bikes_in_station.select {|b| b.broken? }
  @bikes_in_station -= broken_bikes
  broken_bikes # return the broken bikes
end

  def bikes_to_s
    @bikes_in_station.inspect
  end

 def release_bike
    @bikes_in_station.pop
  end

  def return_to_station(bike)
    @bikes_in_station += bike
  end


end
