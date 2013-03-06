class Van

  attr_reader :collected_bikes

  def initialize
    @collected_bikes = []
  end

  def collect_broken_bikes(station)
    @collected_bikes.concat(station.release_broken_bikes)
  end

end