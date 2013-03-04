class Control

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

    @stations.first.add_bikes(@bikes)

     @people.first.assign_bike(@stations.first.release_bike) 
     

      puts "Inside the people #{@people}"

  end

   def create_report
    #"Hello World #{@bikes} and hello again #{@people} and one station for now #{@stations} AND ALSO #{@stations.first.bikes_to_s} PERSON WITH BIKE #{@assigned_bike}}" 
    "PERSON WITH BIKE #{}"
   end

   #first person (array)@people.first 


   def run
   end
end

