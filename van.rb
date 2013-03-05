class Van

  attr_reader :collected_bikes

  def initialize
    @collected_bikes = []
  end

  def collect_broken_bikes(location)
    @collected_bikes.concat(location.release_broken_bikes)
  end

end
