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

# while @bikes is less than < 50 add @bikes to @bikes_in_station
  def bikes_to_s
    @bikes_in_station.inspect
  end
 # while @bikes_in_station is > 0 
 #    1 person can take bike 

 def release_bike
    @bikes_in_station.pop
  end
end
