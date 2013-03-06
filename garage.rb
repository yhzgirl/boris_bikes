class Garage

  def initialize
  end

  def repair_bikes(van)
  van.collect_broken_bikes.each {|bike| bike.fix!}
  station.return_to_station
  end

end
