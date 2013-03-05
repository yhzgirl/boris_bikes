class Control 

  attr_reader :bikes, :people, :stations 

  def initialize 
    @bikes = [] #Array.new
    @people = []
    @stations = []
    #@bikes << Bike.new # @bikes = [Bike.new]
    10.times do |i|
      @bikes << Bike.new
    end

    10.times do |i|
      @people << Person.new
    end

    @stations << Station.new


    @bikes.each do |bike|
      @stations.first.add_bike(bike)
    end

     @people.first.assign_bike(@stations.first.release_bike) 

  end
   def create_report
    
    station = @stations.first
    "This chap has a bike #{@people} and our STATION has #{station.bike_count} bikes in the DOCK"
   end

   #first person (array)@people.first 


   def run
   end
end

