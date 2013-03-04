class Control

  def initialize 
    @bikes = [] #Array.new
    #@bikes << Bike.new # @bikes = [Bike.new]

    10.times do |i|
      @bikes << Bike.new
    end
  end

   def create_report
    "Hello World #{@bikes}"
   end

   def run
   end
end

