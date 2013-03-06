class Control 

  attr_reader :bikes, :people, :stations 

  def initialize 
    @bikes = [] #Array.new
    @people = []
    @stations = []
    @vans = []
    @garages = []
    #@bikes << Bike.new # @bikes = [Bike.new]
    10.times do |i|
      @bikes << Bike.new(rand(2).zero?)
      puts "created a new #{"not" unless @bikes.last.broken?} broken bike"
    end

    10.times do |i|
      @people << Person.new
    end

    @stations << Station.new

    @vans << Van.new

    @garages << Garage.new    

    # @garages << Garage.new

    @bikes.each do |bike|
      @stations.first.add_bike(bike)
    end

    @people.first.assign_bike(@stations.first.release_bike) 

  end
   def create_report
    
    station = @stations.first
    van = @vans.first
    van.collect_broken_bikes(station)
    garage = @garages.first

    puts "This chap has a bike #{@people.first}" 
    puts "STATION has #{station.available_bikes_count} bikes in the DOCK"
    puts "#{van.collected_bikes.count} broken bikes are currently in transit in our van."
    puts "FIXED!"
    puts "Station now has #{station.available_bikes_count} bikes available"

   end

   def run
   end
end

