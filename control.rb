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
  end

   def create_report
    "Hello World #{@bikes} and hello again #{@people} and one station for now #{@stations} AND ALSO #{@stations.first.bikes_to_s}" 
   end

   def run
   end
end

