class Person

  def assign_bike(bike)
    @assigned_bike = bike 
  end

  def to_s
    @assigned_bike.inspect
  end

end
