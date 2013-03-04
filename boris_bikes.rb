
class Control

  def initialize 
    @bikes = [] #Array.new
    @bikes << Bike.new # @bikes = [Bike.new]
  end

   def create_report
    "Hello World #{@bikes}"
   end

   def run
   end
end

class Bike
end




######################################

control = Control.new
control.run 
puts control.create_report
# Ask people to take a bike
# Ask people to return a bike 
# mark some bikes as broken
# ask van to collect broken bikes
# ask van to collect fixed bikes