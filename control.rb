class Control 

  attr_reader :bikes, :people, :stations 

  def initialize 
    @bikes = [] #Array.new
    @people = []
    @stations = []
    #@bikes << Bike.new # @bikes = [Bike.new]
    10.times do |i|
      @bikes << Bike.new(rand(2).zero?)
      puts "created a new #{"not" unless @bikes.last.broken?} broken bike"
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

    "This chap has a bike #{@people.first} and our STATION has #{station.available_bikes_count} bikes in the DOCK and is broken"

   end

   #first person (array)@people.first 


   def run
   end
end

