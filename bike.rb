class Bike

  def initialize(broken)
    @broken = broken
  end

  def broken?
    @broken 
  end

  def fix!
    @broken = false
  end

end
