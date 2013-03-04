class Station

CAPACITY = 10 

def initialize
  @bikes_in_station = []
end

def add_bikes(bikes)
  @bikes_in_station = @bikes_in_station + bikes
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
